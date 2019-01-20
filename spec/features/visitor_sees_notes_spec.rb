require 'rails_helper'

feature 'visitor sees notes' do
  describe 'a visitor on the notes index' do
    it 'displays all valid notes from API endpoint' do
      visit '/' # (to do: after test is functional, stub request with webmock gem so css results are consistent, move API endpoint testing to service spec)
      expect(page).to have_content("Welcome to Noteful")

      expect(page).to have_css(".note")

      within(first(".note")) do
        expect(page).to have_css(".description")
        expect(page).to have_css(".tag")
        expect(page).to have_css(".date")
      end
      # add lambda condition: A note is valid when it has 1 of 3 tags "Work", "Personal", "Hobby"
    end

    it 'allows visitor to sort notes by date' do
      visit '/'

      expect(page).to have_button("Newest to Oldest")
      click_on("Newest to Oldest")

      within(first(".note")) do
        expect(page).to have_content("2019")
        expect(page).to_not have_content("2019-01-09")
      end

    end

    it 'allows visitor to sort notes by tag' do
      # when I visit the root page
      visit '/'
      # and see all notes
      expect(page).to have_css(".note")

      #create a note with tag Work
      click_on("Add New Note")
      fill_in :description, with: "Study Golang"
      select "Work", from: :tag
      click_on("Submit New Note")
      expect(current_path).to eq(notes_path)
      expect(page).to have_content("Study Golang")

      #create a note with tag Hobby
      click_on("Add New Note")
      fill_in :description, with: "Play with kitten"
      select "Hobby", from: :tag
      click_on("Submit New Note")
      expect(current_path).to eq(notes_path)
      expect(page).to have_content("Play with kitten")

      # and from the dropdown to sort by tag I select "Hobby"
      select "Hobby", from: :tag
      click_on("Submit Tag")

      # then I only see notes with the Tag "Hobby"
      within(first(".note")) do
        expect(page).to_not have_content("Work")
      end
    end
  end
end
