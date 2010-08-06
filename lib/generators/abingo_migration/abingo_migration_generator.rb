class AbingoMigrationGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  def generate_migration
    puts "Hello world!: #{migration_timestamp}"
    copy_file "create_abingo_tables.rb", "db/migrate/#{migration_timestamp}_create_abingo_tables.rb" 
  end
  
  private
  
  def migration_timestamp
    @migration_timestamp ||= Time.now.strftime("%Y%m%d%H%M%S")
  end
end
