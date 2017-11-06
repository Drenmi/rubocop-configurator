# frozen_string_literal: true

require_relative "../../spec_helper"

describe RubocopRelease do
  it "can be initialized with attributes" do
    book = RubocopRelease.new(name: "0.51.0")

    book.name.must_equal "0.51.0"
  end
end
