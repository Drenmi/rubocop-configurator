# frozen_string_literal: true

# Represents an official RuboCop release on GitHub.
#
# @!attribute tag_name
#   @return [String] The name of the release
#
# @!attribute published_at
#   @return [DateTime] A timestamp of the release's publication
#
class RubocopRelease < Hanami::Entity
end
