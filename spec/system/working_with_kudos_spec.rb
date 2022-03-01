require 'rails_helper'

RSpec.describe 'Working with kudos' do
  let(:employee) { create(:employee) }
  let!(:receiver) { create(:employee) }

  before do
    sign_in employee
  end

  it 'allows users to perform CRUD operation with around his kudos' do
    visit root_path

    click_link 'New Kudo'
    fill_in 'Title', with: 'Kudo Title'
    fill_in 'Content', with: 'Kudo Content'
    fill_in 'Giver', with: '1'
    select receiver.email, from: 'kudo_receiver_id'

    click_button 'Create Kudo'

    expect(page).to have_content 'Kudo was successfully created.'

    click_on 'Edit'

    fill_in 'Title', with: 'Kudo title edited'
    click_button 'Update Kudo'

    expect(page).to have_content 'Kudo was successfully updated.'

    click_on 'Back'

    click_on 'Destroy'

    expect(page).to have_content 'Kudo was successfully destroyed.'
  end
end
