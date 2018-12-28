class NotesController < ApplicationController
  def index
      @note_filter = NoteFilter.new(params[:tag])
  end

  def new
  end

  def create

  end

end
