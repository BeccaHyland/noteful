class NoteSearchResult
  def initialize(filter = nil) *****
    @filter = filter
  end

#stop filtering notes here in the FE, just return them all
  def notes
    @notes ||= service.all_notes.select{|i| i[:description] && i[:tag]}.map do |note_data|
      Note.new(note_data)
    end
    if (@filter != nil) && (@filter != "All Tags")
      filter_notes
    end
    @notes
  end

  def filter_notes
    if @filter == "date"
      @notes = @notes.sort_by { |note| note.dateCreated } ###
    else
      @notes = @notes.find_all do |note|
        note.tag == @filter
      end
    end
  end

  private

  def service
    NotefulService.new(@filter)
  end
end
