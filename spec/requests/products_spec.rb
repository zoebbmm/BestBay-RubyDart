require 'spec_helper'

describe "Products" do
  subject { page }

  describe "post product page" do
    before { visit post_product }

    let(:submit) { 'Create my account' }

    describe "page should have h1 as Sign up" do
      it { should have_selector('h1', text: 'Sign up') }
    end

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: 'foo'
        fill_in "Email",        with: 'foo@bar.com'
        fill_in "Password",     with: 'foobar'
        fill_in "Confirmation", with: 'foobar'
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end
