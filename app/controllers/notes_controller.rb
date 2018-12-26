class NotesController < ApplicationController
  def index
    @notes = NoteFilter.new
  end
end
