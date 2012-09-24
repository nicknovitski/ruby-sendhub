require 'httparty'

module SendHub
  class Service
    include HTTParty
    headers  "Content-Type" => "application/json"
  
  end
end