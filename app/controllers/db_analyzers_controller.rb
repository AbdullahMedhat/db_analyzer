class DbAnalyzersController < ApplicationController
  def dashboard
    @table_names = ActiveRecord::Base.connection.tables - TableInsight::DEFAULT_RAILS_TABLES
  end
end
