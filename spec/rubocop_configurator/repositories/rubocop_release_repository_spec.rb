# frozen_string_literal: true

require_relative "../../spec_helper"

describe RubocopReleaseRepository do
  describe "#latest" do
    it "returns the latest release" do
      repository = RubocopReleaseRepository.new

      repository.create(tag_name: "v0.51.0", published_at: Time.parse("2017-10-18"))
      repository.create(tag_name: "v0.50.0", published_at: Time.parse("2017-09-14"))

      repository.latest.tag_name.must_equal "v0.51.0"

      repository.clear
    end
  end
end
