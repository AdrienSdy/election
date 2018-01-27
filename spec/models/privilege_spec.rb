# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Privilege, type: :model do
  subject { described_class.reflect_on_association(association).macro }

  describe 'associations' do
    context 'with person' do
      let(:association) { :person }

      it { is_expected.to eq(:belongs_to) }
    end
    context 'with permission' do
      let(:association) { :permission }

      it { is_expected.to eq(:belongs_to) }
    end
  end
end
