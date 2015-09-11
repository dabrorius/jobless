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

You can see a larger source example [here](https://github.com/dabrorius/jobless/blob/master/example.rb) which gets compiled into this.

## Personal info
Following keywords are available on top level to describe yourself.
* name
* email
* location
* address
* homepage

## Groups and items
We can add groups of entries to our CV with groups keyword. Each group contains one or more entries.

```ruby
group "Group title" do
  entry do
  end
end
```

For convenience Jobless provides several keywords with pre-defined titles.
* group
* employment
* education
* open_source
* other_experience

## Entry (Item)
Following keywords are available for entries.
* title
* company
* homepage
* technologies
* description
* start_date
* end_date

They can also have multiple __bulletin__ keywords, each of which will be rendered
as one bulletin item.






