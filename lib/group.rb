require 'active_support/core_ext/string/inflections'
require 'net/http'
require 'JSON'

module Jobless
  class Group
    attr_reader :items, :name, :type

    def initialize(name)
      @name = name
      @type = name.parameterize
      @items = []
    end

    def item(&block)
      item = Item.new
      item.instance_eval &block
      @items.push item
    end

    alias_method :entry, :item

    def github_repo(url, &block)
      repo_name = url.match(/([^\/]*)\/([^\/]*)$/).captures.join("/")
      repo_data = fetch_github_repo_data(repo_name)
      item = Item.new
      item.instance_eval do
        title repo_data['name']
        description repo_data['description']
        homepage repo_data['html_url']
      end
      item.instance_eval &block if block_given?
      @items.push item
    end

    private

    def fetch_github_repo_data(repo_name)
      url = "https://api.github.com/repos/#{repo_name}"
      uri = URI.parse(url)
      response = Net::HTTP.get_response(uri)
      if response.code == "200"
        JSON.parse(response.body)
      else
        raise Error::GitHubApi, "GitHub API responded with an unexpected "\
          "status: '#{response.code}', while trying to fetch following "\
          "repository: '#{repo_name}'."
      end
    end
  end
end
