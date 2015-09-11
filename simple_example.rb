require_relative 'lib/jobless'

Jobless.cv do
  name "John Doe"
  email "john.doe@gmail.com"
  location "Land of Ooo"
  address "Candy Kingdom 7"
  homepage "http://dabrorius.github.io"

  employment do
    entry do
      title "Full-stack Rails developer"
      company "Royal Programming Squad"
      technologies "Ruby, Ruby on Rails, Javascript"
      homepage "http://google.com"
      bulletin "Created an app for dungeon management"
      bulletin "Refacored the pudding making application"
      start_date "April 2015"
      end_date "June 2015"
    end
    entry do
      title "C# Developer"
      company "Microsoft"
      technologies "C#, Visual Studio"
      bulletin "Helping design and develop new features. "
      bulletin "Created an interface for bulk editing records similar to excel "\
        "spreadsheet."
      start_date "January 2015"
      end_date "April 2015"
    end
  end

  education do
    entry do
      title "M.S. Computer Science"
      company "The University of Ooo"
      start_date "2011"
      end_date "2013"
    end
  end

end
