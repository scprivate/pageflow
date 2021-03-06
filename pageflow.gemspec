lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pageflow/version'

Gem::Specification.new do |s|
  s.name        = 'pageflow'
  s.version     = Pageflow::VERSION
  s.authors     = ['Codevise Solutions Ltd']
  s.email       = ['info@codevise.de']
  s.homepage    = 'https://pageflow.io'
  s.summary     = 'Multimedia story telling for the web.'
  s.license     = 'MIT'

  s.files = Dir['{admins,app,config,db,lib,vendor,spec/factories,spec/fixtures}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md', 'CHANGELOG.md']

  s.require_paths = ['lib']

  s.add_dependency 'rails', '~> 5.2.0'

  # Framework for admin interface
  s.add_dependency 'activeadmin', '1.3.0'

  # Searchable select boxes for filters and forms
  s.add_dependency 'activeadmin-searchable_select', '~> 1.0'

  # User authentication
  s.add_dependency 'devise', '~> 4.4.0'

  # Faster JSON backend
  s.add_dependency 'yajl-ruby', '~> 1.2'

  # Authorization
  s.add_dependency 'cancancan', '~> 1.10'

  # State machines for active record
  s.add_dependency 'state_machine', '~> 1.2'

  # Trigger resque jobs with a state machine
  s.add_dependency 'state_machine_job', '~> 2.0'

  # File attachments
  s.add_dependency 'paperclip', '~> 4.2.4'

  # zencoder
  s.add_dependency 'zencoder', '~> 2.5'

  # Amazon AWS
  s.add_dependency 'aws-sdk', '~> 1.60'

  # Markdown parser
  s.add_dependency 'kramdown', '~> 1.5'

  # Convert srt files to vtt
  s.add_dependency 'webvtt-ruby', '~> 0.3.2'

  # Decode strings with HTML entities
  s.add_dependency 'htmlentities', '~> 4.3'

  # Use jquery as the JavaScript library
  s.add_dependency 'jquery-rails', '~> 4.3'

  # Advanced ui widgets for the editor.
  #
  # WARNING: This gem has compatibility issues with sass-rails. See
  # pageflow/jquery_ui.scss for details and update instructions.
  s.add_dependency 'jquery-ui-rails', '5.0.5'

  # Split screen functionality for editor sidebar
  s.add_dependency 'jquery-layout-rails', '~> 0.1.0'

  # Editor file upload helper
  s.add_dependency 'jquery-fileupload-rails', '0.4.1'

  # Color picker
  s.add_dependency 'jquery-minicolors-rails', '~> 2.2'

  s.add_dependency 'backbone-rails', '~> 1.0.0'

  # Further helpers and conventions on top of Backbone
  s.add_dependency 'marionette-rails', '~> 1.1.0'

  # React.js assets and server side rendering helpers
  s.add_dependency 'react-rails', '~> 1.8'

  # Templating engine used to render jst tempaltes.
  s.add_dependency 'ejs', '~> 1.1'

  # Templating engine used to compile scss templates.
  s.add_dependency 'sass-rails', '~> 5.0'

  # Scss compiler
  s.add_dependency 'sass', '~> 3.4'

  # Using translations from rails locales in javascript code.
  s.add_dependency 'i18n-js', '~> 2.1'

  # WYSIWYG editor
  s.add_dependency 'wysihtml5x-rails', '0.4.17'

  s.add_dependency 'bourbon', '~> 3.1.8'

  # Pretty URLs
  s.add_dependency 'friendly_id', '~> 5.2'

  # Build JSON APIs with ease.
  s.add_dependency 'jbuilder', '>= 1.5', '< 3.0'

  # Browser language detection
  s.add_dependency 'http_accept_language', '~> 2.0'

  # Shared translations
  s.add_dependency 'pageflow-public-i18n', '~> 1.13'

  # Password encryption
  s.add_dependency 'bcrypt', '~> 3.1.7'

  # Used by the dummy rails application
  s.add_development_dependency 'mysql2', '~> 0.5.2'

  # Resque as default Active Job backend
  s.add_development_dependency 'resque', '~> 1.25'
  s.add_development_dependency 'resque-scheduler', '~> 2.5'
  s.add_development_dependency 'ar_after_transaction', '~> 0.4.0'
  s.add_development_dependency 'redis', '~> 3.0'
  s.add_development_dependency 'redis-namespace', '~> 1.5'

  # Testing framework
  s.add_development_dependency 'rspec-rails', '~> 3.4'

  # Matchers like "to have(3).items"
  s.add_development_dependency 'rspec-collection_matchers', '~> 1.1'

  # Browser like integration testing
  s.add_development_dependency 'capybara', '~> 2.4'

  # Chrome Headless browser testing
  s.add_development_dependency 'selenium-webdriver', '~> 3.6.x'
  s.add_development_dependency 'chromedriver-helper', '~> 1.1.x'

  # View abstraction fro integration testing
  s.add_development_dependency 'domino', '~> 0.7.0'

  # Fixture replacement
  s.add_development_dependency 'factory_bot_rails', '~> 4.8'

  # Matchers for Pundit policies
  s.add_development_dependency 'pundit-matchers', '~> 1.0'

  # Clean database in integration tests
  s.add_development_dependency 'database_cleaner', '~> 1.2'

  # Freeze time in tests
  s.add_development_dependency 'timecop', '~> 0.7.1'

  # Colorized console output
  s.add_development_dependency 'colorize', '~> 0.7.5'

  # Javascript unit testing
  s.add_development_dependency 'teaspoon-mocha', '~> 2.3'

  # Stub HTTP requests in tests
  s.add_development_dependency 'webmock', '~> 1.20'

  # Semantic versioning rake tasks
  s.add_development_dependency 'semmy', '~> 1.0'

  # A gem that makes it easy to write specs for your Rails 3 Generators.
  s.add_development_dependency 'ammeter', '~> 1.1'

  # Ruby code linter
  s.add_development_dependency 'rubocop', '~> 0.54.0'

  # Scss code linter
  s.add_development_dependency 'scss_lint', '~> 0.50.0'
end
