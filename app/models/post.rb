class Post < ApplicationRecord
  include TableInsightsCallbacks

  has_many :comments
end
