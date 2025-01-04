class DbAnalyzersController < ApplicationController
  DEFAULT_RAILS_TABLES = %w[ar_internal_metadata schema_migrations]

  def dashboard
    @table_names = ActiveRecord::Base.connection.tables - DEFAULT_RAILS_TABLES
  end
end
