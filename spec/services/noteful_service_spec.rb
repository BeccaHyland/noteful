require 'rails_helper'

describe NotefulService do
  context 'instance methods' do
    context '#all_notes' do
      it 'returns an array of notes from API endpoint' do
        service = NotefulService.new

        expect(service.all_notes).to be_an(Array)
        expect(service.all_notes.second).to have_key(:Description)
        expect(service.all_notes.second).to have_key(:Tag)

      end
    end
  end
end
