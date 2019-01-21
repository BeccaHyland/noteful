class NoteSearchResult
  def initialize(filter = nil)
    @filter = filter
  end

  def notes
    @notes ||= service.all_notes.select{|i| i[:description] && i[:tag]}.map do |note_data|
      Note.new(note_data)
    end
    if (@filter == "date")
      sort_by_date
    end
    @notes
  end

  def sort_by_date
    @notes = @notes.sort_by { |note| note.dateCreated }
  end

  private

  def service
    NotefulService.new(@filter)
  end
end
