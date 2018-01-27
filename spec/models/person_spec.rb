# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Person, type: :model do
  subject { described_class.reflect_on_association(association).macro }

  describe 'associations' do
    context 'with privileges' do
      let(:association) { :privileges }

      it { is_expected.to eq(:has_many) }
    end
    context 'with permissions' do
      let(:association) { :permissions }

      it { is_expected.to eq(:has_many) }
    end
  end

  describe '#admin?' do
    context 'with sudo permission' do
      it { expect(create(:admin)).to be_admin }
    end

    context 'without sudo permission' do
      it { expect(create(:person)).not_to be_admin }
    end
  end
end
