# frozen_string_literal: true

require_relative "../../spec_helper"

describe RubocopReleaseRepository do
  describe "#latest" do
    it "returns the latest release" do
      repository = RubocopReleaseRepository.new

      repository.create(name: "0.51.0", published_at: Time.new(2017, 10, 18))
      repository.create(name: "0.50.0", published_at: Time.new(2017, 9, 14))

      repository.latest.name.must_equal "0.51.0"
    end
  end
end
