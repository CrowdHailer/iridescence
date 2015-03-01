DATABASE_URL = ENV.fetch('DATABASE_URL'){
  "postgres://localhost/iridescence_#{RACK_ENV}"
}

Sequel::Model.plugin(:schema)
DB = Sequel.connect(DATABASE_URL)
DB.extension(:pagination)
