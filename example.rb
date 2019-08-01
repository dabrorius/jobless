require 'jobless'

Jobless.cv do
  name "Filip Defar"
  email "filip.defar@gmail.com"
  location "Zagreb, Croatia"
  address "Naserov Trg 4"
  homepage "http://dabrorius.github.io"

  employment do
    entry do
      title "Full-stack Rails developer"
      company "DirectVest"
      technologies "Ruby, Ruby on Rails, Javascript"
      bulletin "Created a wrapper for Folio Institutional API."
      bulletin "Created a full test suite for existing features."
      bulletin "Refactored the application (From 1.5 to 3.9+ GPA on CodeClimate)."
      bulletin "Created multistep forms for the investment process."
      bulletin "Created a dashboard that heavily relies on external APIs "\
        "as well as low level caching for increased performance."
      start_date "June 2015"
      end_date "November 2015"
    end
    entry do
      title "Full-stack Rails developer"
      company "BizRevr"
      technologies "Ruby, Ruby on Rails, Elasticsearch"
      bulletin "Helping design and develop new features. "
      bulletin "Created an interface for bulk editing records similar to excel "\
        "spreadsheet."
      start_date "April 2015"
      end_date "June 2015"
    end
    entry do
      title "Full-stack Rails developer"
      company "ThinkCERCA"
      technologies "Ruby, Ruby on Rails, Javascript"
      description "I worked on a team with six other developers. "\
        "My job consisted of maintaining, improving and adding new features to "\
        "existing Rails, backbone.js and Ember.js code."
      start_date "July 2014"
      end_date "Februrary 2015"
    end
    entry do
      title "Full-stack Rails developer"
      company "CampWire"
      technologies "Ruby, Ruby on Rails, Javascript"
      bulletin "I created a working payment system with Stripe. "
      bulletin "I wrote a full test suite for the existing code." 
      bulletin "Maintained and refactored existing code."
      bulletin "Introduced new developers to the application."
      start_date "February 2013"
      end_date "July 2014"
    end
  end

  education do
    entry do
      title "M.S. Computer Science"
      company "The University of Zagreb"
      start_date "2011"
      end_date "2013"
    end
    entry do
      title "B.S. Software Engineering"
      company "The University of Zagreb"
      start_date "2007"
      end_date "2011"
    end
  end

  open_source do
    github_repo "dabrorius/jobless"
    github_repo "dabrorius/markov-noodles"
    github_repo "ruby-grape/grape" do
      description "I am a contributor to grape, an opinionated micro-framework "\
        "for creating REST-like APIs in Ruby."
    end
    github_repo "dabrorius/burek"
  end
  
  other_experience do
    entry do
      title "CatMe iOS App"
      homepage "https://itunes.apple.com/us/app/id994659934"
      description "CatMe is a simple native mobile app that allows you to "\
        "virtually pet cats! Move your finger over a cat photo and you will "\
        "hear it purr. It's free, ad-free and completely useless."
    end
    entry do
      title "StackOverflow"
      homepage "http://stackoverflow.com/users/735143/dabrorius"
    end
  end
end
