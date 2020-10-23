RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.start
    FactoryGirl.lint
  ensure
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.around(:each) do |example|
    example.run
    Capybara.reset_sessions!
  end
end
