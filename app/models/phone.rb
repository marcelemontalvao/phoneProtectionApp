class Phone < ApplicationRecord
    has_many :claims, dependent: :destroy

    validates :brand, presence: true
    validates :model, presence: true
    validates :price, presence: true

    def display_name
        "#{id} - #{brand} - #{model}"
    end
end
