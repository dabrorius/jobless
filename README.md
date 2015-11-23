# Jobless
Jobless is a simple DSL written in Ruby for generating CVs.
It generates HTML files, which can be easily converted to PDF format if needed.
Here's an example of Jobless code.

```ruby
Jobless.cv do
  name "John Doe"
  email "john.doe@gmail.com"

  employment do
    entry do
      title "Full-stack Rails developer"
      company "Royal Programming Squad"
      start_date "April 2015"
      end_date "June 2015"
    end
    entry do
      title "C# Developer"
      company "Microsoft"
      start_date "January 2015"
      end_date "April 2015"
    end
  end
end
```

You can see a larger source example [here](https://github.com/dabrorius/jobless/blob/master/example.rb) which gets compiled into [this](http://dabrorius.github.io/cv.html).

## Installation

You can install jobless via RubyGems

```
gem install jobless
```

Then just create a new ruby file, require jobless and start coding. When you
run that file your CV will be generated.

## How to start?

The best way to start is by forking the [example repository](https://github.com/dabrorius/jobless-example).
It's convinient because you can use your GitHub repo to store the CV.

## Available keywords
### Personal info
Following keywords are available on top level:
* name
* email
* location
* address
* homepage

### Groups and entries
Key part of a CV are lists of you archievements grouped in different categories.
You can add groups to your CV with _group_ keyword. Each group consists
of multiple entries

```ruby
group "Group title" do
  entry do
  end
end
```

For convenience, Jobless provides several keywords with pre-defined titles.
* employment
* education
* open_source
* other_experience

```ruby
education do
  entry do
    title "Ruby on Rails Course"
  end
end
```

### Entry
Entry describes one instance of your experience. For example one job position or
open source project.
Following keywords are available for each entry.

* title
* company
* homepage
* technologies
* description
* start_date
* end_date

They can also have multiple __bulletin__ keywords, each of which will be rendered
as one bulletin item.

## GitHub Repo
GitHub Repo is a special type of entry that given a repository name will fetch
and automatically fill in title, homepage and description via GitHub API.

```ruby
open_source do
  github_repo 'dabrorius/jobless'
end
```

You can also override existing or add new keywords to that entry.

```ruby
open_source do
  github_repo 'dabrorius/jobless' do
    description 'A different descrpition'
    technologies 'Ruby'
  end
end
```

## Style
If you don't like the default style, you can provide your custom stylesheet to
be used in the CV.

```ruby
Jobless.cv do
  name "John Doe"
  email "john.doe@gmail.com"
  stylesheet "my_awesome_style.css"
end
```

## Ports

- Clojure [jobless-clj](https://github.com/jbristow/jobless-clj) by [jbristow](https://github.com/jbristow)
