# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Noise, type: :model do

  describe '.create' do
    it 'creates a new noise record in database' do
      Noise.create(user_id: 1, content: 'hi')
      
      noise_find = Noise.last
      expect(noise_find.content).to include('hi')
    end
  end

  describe '.reverse' do
    it 'returns noises in reverse chronological order' do
      Noise.create(content: 'hi')
      Noise.create(content: 'hello')
      Noise.create(content: 'bye')

      noises = Noise.all.order('created_at DESC')

      expect(noises.first.content).to eq('bye')

      # create 3 noises
      # call .all on it and put it in a variable
      # expect them to be in reverse order

    end
  end
end
