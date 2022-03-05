require 'rails_helper'

RSpec.describe 'Admin and employee login' do
  let!(:employee) { create(:employee) }
  let!(:admin_user) { create(:admin_user) }

  it 'Log in, log out' do

    visit root_path

    fill_in 'Email', with: employee.email
    fill_in 'Password', with: employee.password

    click_button 'Log in'

    expect(page).to have_content 'Signed in successfully.'

    click_link 'Admin panel'

    fill_in 'Email', with: admin_user.email
    fill_in 'Password', with: admin_user.password
    click_button 'Log in'

    expect(page).to have_content 'Signed in successfully.'

    click_on 'Sign Out'
    expect(page).to have_content 'Signed out successfully.'
  end
end
