require 'csv'

namespace :db do
  desc "Import data from CSV file"
  task :import_data => :environment do
    csv_file_path = File.join(Rails.root, 'lib', 'tasks', 'glossary.csv')
    table_name = 'glosses' # Replace with your actual table name

    CSV.foreach(csv_file_path, headers: true) do |row|
      Gloss.create!(row.to_hash)
    end
  end
end
