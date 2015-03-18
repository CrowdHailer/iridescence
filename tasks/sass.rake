namespace :sass do
  desc 'Start watching for Sass changes'
  task :watch do
    system "bundle exec sass --watch assets/stylesheets:public/stylesheets --style compressed"
  end
end
