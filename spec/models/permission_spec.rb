# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Permission, type: :model do
  subject { described_class.reflect_on_association(association).macro }

  describe 'associations' do
    context 'with privileges' do
      let(:association) { :privileges }

      it { is_expected.to eq(:has_many) }
    end
    context 'with people' do
      let(:association) { :people }

      it { is_expected.to eq(:has_many) }
    end
  end
end
