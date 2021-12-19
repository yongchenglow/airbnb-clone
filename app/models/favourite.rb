class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  include PgSearch::Model
  pg_search_scope :search_flats_by_title_or_description_or_address,
                  associated_against: {
                    flat: %I[title description address]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
