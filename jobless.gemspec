Gem::Specification.new do |s|
  s.name        = 'jobless'
  s.version     = '0.1.2'
  s.date        = Date.today.to_s
  s.summary     = 'Generate your CV with Ruby'
  s.description = 'Jobless is a simple DSL for creating a CV in HTML format.'
  s.authors     = ['Filip Defar']
  s.email       = 'filip.defar@gmail.com'
  s.files       = ['lib/jobless.rb',
                   'lib/document.rb',
                   'lib/group.rb',
                   'lib/item.rb',
                   'lib/template/style.css',
                   'lib/template/template.html.erb']
  s.homepage    = 'https://github.com/dabrorius/jobless'
  s.license     = 'MIT'
end

