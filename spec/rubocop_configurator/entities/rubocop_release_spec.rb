# frozen_string_literal: true

require_relative "../../spec_helper"

describe RubocopRelease do
  it "can be initialized with attributes" do
    book = RubocopRelease.new(tag_name: "v0.51.0")

    book.tag_name.must_equal "v0.51.0"
  end
end
