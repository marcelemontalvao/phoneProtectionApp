class Claim < ApplicationRecord

=begin
  Representa um sinistro no sistema de proteção.

  Um sinistro é um evento em que o cliente sofre algum tipo de dano ou perda
  do celular e aciona a proteção.

  Exemplos de sinistro:
  - Roubo
  - Quebra de tela
  - Dano por água

  Em um sistema real, o sinistro passaria por um fluxo de análise com status como:
  - aberto: recém criado, aguardando análise
  - em análise: sendo avaliado pela empresa
  - aprovado: aceito e coberto pela proteção
  - recusado: não atende às regras da proteção

  Um sinistro sempre deve estar associado a um celular, pois a proteção é aplicada a um dispositivo específico.
=end
  
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
