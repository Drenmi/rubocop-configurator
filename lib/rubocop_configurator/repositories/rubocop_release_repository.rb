# frozen_string_literal: true

class RubocopReleaseRepository < Hanami::Repository
  def latest
    rubocop_releases.order { published_at.desc }.limit(1).one
  end
end
