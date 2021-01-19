require 'rails_helper'

RSpec.describe Image, type: :model do
  describe 'validations' do
    it { should validate_presence_of :title}
    it { should validate_presence_of :artist}
    it { should validate_presence_of :user_id}
  end

  describe 'relationships' do
    it {should belong_to :user}
  end

  describe 'instance methods' do
  end
end
