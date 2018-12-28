require 'rails_helper'

describe NoteFilter do
  context "with no parameters" do
  it "returns all valid notes from API endpoint" do
    note_filter = NoteFilter.new

    expect(note_filter.notes).to be_an(Array)
    expect(note_filter.notes.first).to be_a(Note)
  end
 end
end
