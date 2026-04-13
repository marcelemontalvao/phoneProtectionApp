class Phone < ApplicationRecord

    # Um celular pode ter vários sinistros associados, pois o cliente pode acionar a proteção mais de uma vez.
    has_many :claims, dependent: :destroy

    validates :brand, presence: true
    validates :model, presence: true
    validates :price, presence: true

    def display_name
        "#{id} - #{brand} - #{model}"
    end
end
