class ApplicationController < ActionController::Base

    before_action :snake_case_params
    skip_before_action :verify_authenticity_token
    
    private

    def snake_case_params
        params.deep_transform_keys!(&:underscore)
    end
end
