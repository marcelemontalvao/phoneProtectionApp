class Claim < ApplicationRecord
    belongs_to :phone

    validates :claim_type, presence: true
    validates :status, presence: true
    validates :phone_id, presence: true

    after_initialize :set_default_status, if: :new_record?
    
    private

    def set_default_status
      self.status ||= "aberto"
    end
end
