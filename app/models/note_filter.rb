class NoteFilter
  def initialize(filter = {})
    @filter = filter
  end

  def notes
    @notes ||= service.note_search.map do |note_data|
      Note.new(note_data)
    end
  end
end
