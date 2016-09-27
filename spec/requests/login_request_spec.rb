require 'rails_helper'

RSpec.describe "login", type: :request do
    it "returns token after successful login" do
        user = User.create!(name: "danny", password: "password", password_confirmation: "password")
        post "/login", name: "danny", password: "password"

        json = JSON.parse(response.body)

        expect(response).to be_success
        expect(json['token']).to match("danny")
    end

    it "returns fail if user is not valid" do
        user = User.create!(name: "danny", password: "password", password_confirmation: "password")
        post "/login", name: "danny", password: "wrong"

        
        json = JSON.parse(response.body)
        expect(response).to have_http_status(401)
    end

end
