require 'rails_helper'

RSpec.describe 'Working with kudos' do
    let(:employee) { create(:employee) }

    before do
        sign_in employee
    end

    it 'allows users to perform CRUD operation with around his kudos' do
        visit root_path

        click_link 'Create New Kudo'       
        fill_in 'Title', with: 'Kudo Title'
        fill_in 'Content', with: 'Kudo Content'
        click_button 'Create Kudo'

        expect(page).to have_content 'Kudo was successfully created.'
        expect(page).to have_content 'Kudo title'

        click_on 'Edit'

        fill_in 'Title', with: 'Kudo title edited'
        click_button 'Update Kudo'

        expect(page).to have_content 'Kudo title edited'

        click_on 'Remove'

        expect(page).to have_content 'Kudo was successfully removed.'
    end
end