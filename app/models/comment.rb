class Comment < ApplicationRecord
  include TableInsightsCallbacks

  belongs_to :post, dependent: :destroy
end
