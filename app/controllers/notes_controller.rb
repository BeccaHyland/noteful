class NotesController < ApplicationController
  def index
    @note_filter = NoteFilter.new
  end
end
