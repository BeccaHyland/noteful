class NotesController < ApplicationController
  def index
    @note_search_result = NoteSearchResult.new(params[:tag])
  end

  def sort_date
    @note_search_result = NoteSearchResult.new("date")
    render :index
  end

  def new
  end

  def create
    params_plus_date = note_params
    params_plus_date[:dateCreated] = Date.today
    service.post_note(params_plus_date.to_json)
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
