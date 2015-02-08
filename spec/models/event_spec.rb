require 'rails_helper'

describe Event do
  let!(:event) { FactoryGirl.create :event }
  let!(:attributes) { FactoryGirl.attributes_for :event }
  context "validations" do
    it "validates an event set in the future." do
      expect(event).to be_valid
    end
    # it "should not validate an event in the past." do
    #   calendar.time = "2014-09-20 19:39:38 -0700"
    # end
  end
end
