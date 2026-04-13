class ClaimsController < ApplicationController
    def index
        @claims = Claim.all
    end

    def new
        @claim = Claim.new
    end

    def create
        @claim = Claim.new(claim_params)

        if @claim.save
        redirect_to claims_path
        else
        render :new
        end
    end

    private

    def claim_params
        params.require(:claim).permit(:claim_type, :description, :status, :phone_id)
    end
end
