require 'rails_helper'

describe "Request Throttling", type: :request do
  context "when the request limit per IP is broken" do
    it "returns a 429" do
      limit = Rack::Attack::THROTTLE_LIMITS[:request_per_ip_per_minute]
      limit.times do |i|
        get root_path
        expect(response).to have_http_status(:ok) if (i < limit)
        expect(response).to have_http_status(:too_many_requests) if (i == limit)
      end
    end
  end
end
