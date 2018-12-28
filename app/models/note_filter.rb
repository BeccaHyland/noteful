class NoteFilter
  def initialize(filter = nil)
    @filter = filter
  end

  def notes
    @notes ||= service.all_notes.select{|i| i[:Description] && i[:Tag]}.map do |note_data|
      Note.new(note_data)
    end
    filter_notes unless (@filter == nil) || (@filter == "All Tags")
    @notes
  end

  def filter_notes
    @notes = @notes.find_all do |note|
      note.tag == @filter
    end
  end

  private

  def service
    NotefulService.new
  end
end
