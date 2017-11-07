# frozen_string_literal: true

require_relative "../../spec_helper"

describe RubocopReleasesUpdater do
  describe "#perform" do
    it "adds new releases into the database" do
      repository = RubocopReleaseRepository.new
      worker = RubocopReleasesUpdater.new

      repository.create(tag_name: "v0.50.0", published_at: Time.parse("2017-09-14"))

      with_github_stub(:releases) do
        worker.perform
      end

      repository.all.count.must_equal 2

      repository.clear
    end
  end
end
