class NotesController < ApplicationController
  def index
      @note_filter = NoteFilter.new(params[:tag])
  end

  def new
  end

  def create
    service.post_note(note_params.to_json)
    redirect_to notes_path
  end

  private

  def note_params
    params.permit(:description, :tag)
  end

  def service
    NotefulService.new
  end

end
