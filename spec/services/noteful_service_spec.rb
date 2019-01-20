require 'rails_helper'

describe NotefulService do
  context 'instance methods' do
    context "@filter" do
      it 'takes in a filter argument at initialize which defaults to nil' do
        ns1 = NotefulService.new
        ns2 = NotefulService.new("Personal")

        expect(ns1.tagFilter).to eq(nil)
        expect(ns2.tagFilter).to eq("Personal")
      end
    end

    context '#all_notes' do
      it 'returns an array of notes from API endpoint' do
        service = NotefulService.new

        expect(service.all_notes).to be_an(Array)
        expect(service.all_notes.first).to have_key(:description)
        expect(service.all_notes.first).to have_key(:tag)
        expect(service.all_notes.first).to have_key(:dateCreated)
      end
    end
  end
end
