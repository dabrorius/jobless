require_relative 'lib/jobless'

Jobless.cv do
  name "Filip Defar"
  email "dabrorius@gmail.com"
  location "Zagreb, Croatia"
  homepage "http://dabrorius.github.io"

  employment do
    entry do
      title "Full-stack Rails developer"
      company "DirectVest"
      technologies "Ruby, Ruby on Rails, Javascript"
      homepage "http://google.com"
      description "Created an API wrapper to a Folio Institutional service. "\
        "Created a full test suite for existing features. "\
        "Refactored the application (From 1.5 to 3.9+ GPA on CodeClimate). "\
        "Created multistep forms for the investment process. "\
        "Created a dashboard that heavily relies on external APIs, "\
        "as well as low level caching for increased performance."
      start_date "June 2015"
      end_date "Current"
    end
    entry do
      title "Full-stack Rails developer"
      company "BizRevr"
      technologies "Ruby, Ruby on Rails, Elasticsearch"
      description "Helping design and develop new features. "\
        "Created an interface for bulk editing records similar to excel "\
        "spreadsheet. Technologies: Ruby on Rails, Javascript, jQuery"
      start_date "April 2015"
      end_date "June 2015"
    end
    entry do
      title "Full-stack Rails developer"
      company "ThinkCERCA"
      technologies "Ruby, Ruby on Rails, Javascript"
      description "I worked in a team with 6 other developers. "\
        "My job consisted of maintaining, improving and adding new feature to "\
        "existing Rails, backbone.js and Ember.js code."
      start_date "July 2014"
      end_date "Februrary 2015"
    end
    entry do
      title "Full-stack Rails developer"
      company "CampWire"
      technologies "Ruby, Ruby on Rails, Javascript"
      description "I created a working payment system with Stripe. "\
        "Wrote a full test suite for existing application. Maintained "\
        "and refactored existing code. Introduced new developers to the "\
        "application."
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
    entry do
      title "burek gem"
      homepage "https://github.com/dabrorius/burek"
      description "A ruby/rails gem for managing translations easy way."
    end
    entry do
      title "markov-noodles"
      homepage "https://github.com/dabrorius/markov­noodles"
      description "Markov noodles is a minimalistic library for generating "\
        "text using Markov chains."
    end
    entry do
      title "grape"
      homepage "https://github.com/ruby­grape/grape"
      description "I am a contributer to grape an opinionated micro­framework "\
        "for creating REST­like APIs in Ruby."
    end
    entry do
      title "CatMe iOS App"
      homepage "https://itunes.apple.com/us/app/id994659934"
      description "CatMe is a simple native mobile app that allows you to "\
        "virtually pet cats! Move your finger over a cat photo and you will "\
        "hear it purr. It's free, ad­free and completely useless."
    end
  end
  
  other_experience do
    entry do
      title "StackOverflow"
      homepage "http://stackoverflow.com/users/735143/dabrorius"
    end
  end
end
