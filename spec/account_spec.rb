require 'spec_helper'

module SendHub
  describe Account do
    let (:api_key) { 23 }
    let (:phone_number) { '555-5555' }
    let (:root) { "https://api.sendhub.com/v1/"}
    let (:basic_query_params) {"username=#{phone_number}&api_key=#{api_key}"}
    
    subject (:texter) { Account.new(api_key, phone_number)}

    describe "#get_contacts" do
      it "asks Service for its contacts" do
        Service.should_receive(:get).with("#{root}contacts/?#{basic_query_params}", body: "{}"})

        texter.get_contacts
      end
    end
  end
end