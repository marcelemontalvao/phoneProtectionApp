class Claim < ApplicationRecord
    belongs_to :phone

    validates :claim_type, presence: true
    validates :status, presence: true
    validates :phone_id, presence: true
end
