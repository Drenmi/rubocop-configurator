# frozen_string_literal: true

require "features_helper"

describe "Visit home" do
  it "is successful" do
    visit "/"

    page.title.must_equal("RuboCop Configurator")
  end
end
