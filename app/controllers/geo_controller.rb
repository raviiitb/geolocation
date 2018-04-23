class GeoController < ApplicationController

  def home
  end

  def search
    response = call_api search_params[:address]
    if response.status == 404
      render json: { message: 'External API not found' }, status: 404
    elsif response.status == 200
      parsed_response = JSON.parse(response.body)
      if parsed_response['status'] == 'OK'
        render json: parsed_response['results'].first['geometry']['location']
      else
        render json: { message: parsed_response['error_message'] }
      end
    else
      render json: { message: 'Unable to get result from external API'}, status: response.status
    end
  end

  private

  def search_params
    params.permit :address
  end

  def call_api(address)
    HTTP.get(Rails.application.config.API_endpoint, params: { address: address, key: Rails.application.config.API_key, region: 'de' } )
  end
end
