require 'rails_helper'

describe UsersController, :type => :controller do

	before do
		# @user = User.create!(email: "test1@example.com", password: "abcdef")
		@user = FactoryGirl.create(:user)
		# @second_user = User.create!(email: "test2@example.com", password: "123456")
		@second_user = FactoryGirl.create(:user)
	end

	describe "GET #show" do

		context 'User is logged in' do

			before do
				sign_in @user
			end

			it "loads correct user details" do
				get :show, params: {id: @user.id}
				expect(response).to have_http_status (200)
				expect(assigns(:user)).to eq @user
			end

			it "redirects to HTTP 302 status code" do
				get :show, params: {id: @second_user.id}
				expect(response).to have_http_status (302)
				expect(assigns(:user)).to eq @second_user
			end

		end

		context 'No user is logged in' do

			it "redirects to login" do
				get :show, params: {id: @user.id}
				expect(response).to redirect_to(root_path)
			end

		end

		context "User cannot acces the show page of another one" do

			it "redirects to login" do
				get :show, params: {id: @second_user.id}
				expect(response).to redirect_to(root_path)
			end

		end

	end

end