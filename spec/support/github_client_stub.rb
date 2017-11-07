# frozen_string_literal: true

# Stubbed GitHub responses for use in tests.
#
class GithubClientStub
  def releases(_repository)
    [
      { tag_name: "v0.51.0", published_at: Time.parse("2017-10-18") },
      { tag_name: "v0.50.0", published_at: Time.parse("2017-09-14") }
    ]
  end
end

# Stub GitHub requests by switching the Octokit client for `GitHubClientStub`.
# You can optionally verify that the intended endpoints were called by passing
# an array of endpoint names (Octokit public methods.)
#
# @example Usage
#   with_github_stub(:releases) do
#     some_github_worker.perform
#   end
#
def with_github_stub(*endpoints)
  mock = MiniTest::Mock.new
  stub = GithubClientStub.new

  endpoints.each do |endpoint|
    mock.expect(endpoint, stub.public_send(endpoint, nil), ["bbatsov/rubocop"])
  end

  Octokit::Client.stub(:new, mock) do
    yield if block_given?
  end

  assert mock.verify unless endpoints.empty?
end
