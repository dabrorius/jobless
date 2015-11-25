require 'spec_helper'
require 'errors'
require 'group'
require 'item'

describe Jobless::Group do
  subject(:group) { Jobless::Group.new("Other experience") }

  describe '#initialize' do
    context 'infers type from name' do
      it { expect(group.type).to eq('other-experience') }
    end
  end

  describe '#item' do
    it 'creates a new item' do
      expect do
        group.item do
        end
      end.to change { group.items.count }.from(0).to(1)
    end
  end

  describe '#github_repo' do
    let(:new_item) { group.items.first }
    let(:repository_url) { 'https://github.com/dabrorius/jobless' }

    context 'when a URL is given' do
      around { |example| VCR.use_cassette("github_jobless") { example.run } }

      it 'creates a new item' do
        expect { group.github_repo repository_url }.
          to change { group.items.count }.from(0).to(1)
      end

      it "fills item's attributes with data from GitHub API" do
        group.github_repo repository_url
        expect(new_item.title).to eq('jobless')
        expect(new_item.description).to eq('A ruby DSL for generating CVs.')
        expect(new_item.homepage).to eq('https://github.com/dabrorius/jobless')
      end

      it 'allows user to override fetched attributes' do
        group.github_repo repository_url do
          title "Different title"
        end
        expect(new_item.title).to eq('Different title')
        expect(new_item.description).to eq('A ruby DSL for generating CVs.')
        expect(new_item.homepage).to eq(repository_url)
      end

      it 'allows adding of new attributes' do
        group.github_repo repository_url do
          technologies "Ruby"
        end
        expect(new_item.technologies).to eq('Ruby')
      end
    end

    context 'when a repository name is given' do
      around { |example| VCR.use_cassette("github_jobless") { example.run } }

      it 'creates a new item' do
        expect do
          group.github_repo 'dabrorius/jobless'
        end.to change { group.items.count }.from(0).to(1)
      end

      it "fills item's attributes with data from GitHub API" do
        group.github_repo 'dabrorius/jobless'
        expect(new_item.title).to eq('jobless')
        expect(new_item.description).to eq('A ruby DSL for generating CVs.')
        expect(new_item.homepage).to eq(repository_url)
      end
    end

    context 'when invalid url is given' do
      around { |example| VCR.use_cassette("github_invalid") { example.run } }

      it 'raises an error' do
        expect do
          group.github_repo 'https://github.com/dabrorius/jobles'
        end.to raise_exception(Jobless::Error::GitHubApi)
      end
    end
  end
end
