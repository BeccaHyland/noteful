require 'rails_helper'

describe NoteSearchResult do
  context "with no parameters" do
  it "returns all valid notes from API endpoint" do
    nsr = NoteSearchResult.new

    expect(nsr.notes).to be_an(Array)
    expect(nsr.notes.first).to be_a(Note)
  end
 end
end
