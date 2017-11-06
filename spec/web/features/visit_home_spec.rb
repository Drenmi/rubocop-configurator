# frozen_string_literal: true

require "features_helper"

describe "Visit home" do
  it "is successful" do
    visit "/"

    page.body.must_include("RuboCop Configurator")
  end
end
