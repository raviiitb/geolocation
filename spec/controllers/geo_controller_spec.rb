require 'rails_helper'

RSpec.describe GeoController, type: :controller do
  describe 'search' do
    it "returns a OK status" do
      stub_request(:get, "https://example.com/?address=berlin&key=secret_key&region=de").
         with(  headers: {
          'Connection'=>'close',
          'Host'=>'example.com',
          'User-Agent'=>'http.rb/3.0.0'
           }).
         to_return(status: 200, body: "{\"results\":[{\"geometry\":{\"location\":{\"lat\":1,\"lng\":1}}}],\"status\":\"OK\"}", headers: {})
      get :search, params: { address: 'berlin' }
      expect(response).to have_http_status(:success)
    end

    it "external API returns 404" do
      stub_request(:get, "https://example.com/?address=berlin&key=secret_key&region=de").
         with(  headers: {
          'Connection'=>'close',
          'Host'=>'example.com',
          'User-Agent'=>'http.rb/3.0.0'
           }).
         to_return(status: 404, body: "", headers: {})
      get :search, params: { address: 'berlin' }
      expect(response).to have_http_status(404)
    end
  end
end
