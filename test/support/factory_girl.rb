# Searches for factories in test/factories
FactoryGirl.find_definitions

# overwrite as using sequel not active record
FactoryGirl.to_create { |i| i.save }
