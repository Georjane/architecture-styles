require 'rails_helper'
  describe 'the signin process', type: :feature do
     it 'signs @user in' do
       visit 'login'
       fill_in 'Name', with: 'User1'
      click_button 'Log in'
      expect(current_path).to eq(root_path)
     end
end