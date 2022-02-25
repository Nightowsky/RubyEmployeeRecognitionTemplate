require 'rails_helper'

RSpec.describe Kudo, type: :model do
    it 'returns the title for a kudo' do
        kudo = build(:kudo, title: 'Kudooo', content: 'Content', receiver_id: '2', giver_id: '1')
    end
end
