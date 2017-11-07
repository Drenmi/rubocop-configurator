# frozen_string_literal: true

class RubocopReleasesUpdater
  RELEASE_ATTRIBUTES = %i[tag_name published_at].freeze

  def perform
    new_releases_attributes =
      remote_releases_attributes - local_releases_attributes

    repository.create(new_releases_attributes)
  end

  private

  def remote_releases_attributes
    github.releases(ENV.fetch("RUBOCOP_REPO")).map do |release|
      extract_attributes(release)
    end
  end

  def local_releases_attributes
    repository.all.map do |release|
      extract_attributes(release)
    end
  end

  def extract_attributes(release)
    release.to_h.select { |key, _value| RELEASE_ATTRIBUTES.include?(key) }
  end

  def repository
    @repository ||= RubocopReleaseRepository.new
  end

  def github
    @github ||= begin
      Octokit::Client.new(access_token: ENV.fetch("GITHUB_API_TOKEN"))
    end
  end
end
