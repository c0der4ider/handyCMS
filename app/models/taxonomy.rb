class Taxonomy < ApplicationRecord
  belongs_to :term
  has_ancestry
  has_and_belongs_to_many :posts
end
