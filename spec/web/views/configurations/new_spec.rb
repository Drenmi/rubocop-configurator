# frozen_string_literal: true

require_relative "../../../spec_helper"

describe Web::Views::Configurations::New do
  let(:exposures) { Hash[] }
  let(:template)  { Hanami::View::Template.new("apps/web/templates/configurations/new.html.erb") }
  let(:view)      { Web::Views::Configurations::New.new(template, exposures) }
  let(:rendered)  { view.render }
end
