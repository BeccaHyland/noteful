class NoteFilter
  def initialize(filter = {})
    @filter = filter
  end

  def notes
    @notes ||= service.all_notes.map do |note_data|
      Note.new(note_data)
    end
  end

  private

  def service
    NotefulService.new
  end
end
