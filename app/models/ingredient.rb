class Ingredient < ApplicationRecord
  belongs_to :recipe

  include PgSearch::Model
    pg_search_scope :search_by_name,
      against: :name,
      associated_against: {
        recipe: [ :name, :description ]
      },
      using: {
        tsearch: { prefix: true }
      }
end
