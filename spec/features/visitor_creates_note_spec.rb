require 'rails_helper'

feature 'visitor creates note' do
  describe 'a visitor on the notes index' do
    it 'links to the Add Note page and allows note creation' do
      visit '/'

      expect(page).to have_link("Add New Note")
      click_on("Add New Note")
      expect(current_path).to eq(new_note_path)

      fill_in :description, with: "Complete testing"
      select "work", from: :tag

      click_on("Submit New Note")

      expect(current_path).to eq(notes_path)
      expect(page).to have_content("Complete testing")
    end
  end
end
