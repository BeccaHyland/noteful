class NotesController < ApplicationController
  def index
      @note_filter = NoteFilter.new(params[:tag])
  end
end
