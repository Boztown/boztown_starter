# frozen_string_literal: true

class Rack::Attack
  THROTTLE_LIMITS = {
    request_per_ip_per_minute: (ENV['THROTTLE_IP_LIMIT_PER_MINUTE'] || 100).to_i
  }.freeze

  cache.store = Redis.new

  throttle 'per_request_ip', {
    limit: THROTTLE_LIMITS[:request_per_ip_per_minute],
    period: 60
  }, &:ip

  Rack::Attack.throttled_response = lambda do |_env|
    # You have access to the name and other data about the matched throttle
    # env['rack.attack.matched'],
    # env['rack.attack.match_type'],
    # env['rack.attack.match_data'],
    # env['rack.attack.match_discriminator']
    headers = {
      'Content-Type' => 'application/vnd.api+json'
    }

    [429, headers, [{ errors: [{ title: "Rate limit exceeded", status: "429" }] }.to_json]]
  end
end
