require 'rails_helper'

RSpec.describe Favorite, type: :model do
  subject { FactoryBot.create(:favorite) }
  context 'validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  end
end