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
      # and see all notes
      # and from the dropdown to sort by tag I select "Hobby"
      # then I only see notes with the Tag "Hobby"

      # functionality complete
      # postponing further testing
    end
  end
end
