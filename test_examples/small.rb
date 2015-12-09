require_relative '../lib/jobless'

Jobless.cv "small.html" do
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
