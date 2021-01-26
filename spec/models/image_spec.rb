require 'rails_helper'

RSpec.describe Image, type: :model do
  describe 'validations' do
    it { should validate_presence_of :artist}
    it { should validate_presence_of :small}
    it { should validate_presence_of :full}
  end

  describe 'relationships' do
    it {should belong_to :user}
  end

  describe 'instance methods' do
  end
end
