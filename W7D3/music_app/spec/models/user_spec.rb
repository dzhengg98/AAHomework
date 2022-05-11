require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe User do
    subject(:user) {User.new(email: "vh71886@aa.com", password: "vh71886")}

    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest)}
    it { should validate_length_of(:password).is_at_least(6).allow_nil}

    describe "#is_password?"

    describe "#reset_session_token"
    
    describe "::find_by_credentials"
  end
end