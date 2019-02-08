require 'rails_helper'

RSpec.describe Comment, type: :model do

let!(:user) { FactoryBot.create :user }
let!(:evento) { FactoryBot.create :event}
let(:comentario) { FactoryBot.create :comment, user: user, event: evento}
subject { comentario }

describe 'Associações' do
  it{ is_expected.to belong_to(:user) }
  it{ is_expected.to belong_to(:event) }
  it{ is_expected.to have_many(:reports) }
end


end
