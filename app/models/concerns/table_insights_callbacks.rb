# HERE you can catch all the table insights like the table size

module TableInsightsCallbacks
  extend ActiveSupport::Concern

  included do
    after_create  :create_or_update_table_insight
    after_destroy :update_table_insight
  end

  def create_or_update_table_insight
    ti = TableInsight.find_by(name: self.class.name).presence || TableInsight.create(name: self.class.name, size: self.class.count)
    ti.update(size: ti.size + 1)
  end

  def update_table_insight
    ti = TableInsight.find_or_create_by(name: self.class.name)
    ti.update(size: ti.size - 1) if ti
  end
end
