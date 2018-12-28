class NoteFilter
  def initialize(filter = {})
    @filter = filter
  end

  def notes
    @notes ||= service.all_notes.select{|i| i[:Description] && i[:Tag]}.map do |note_data|
      Note.new(note_data)
    end
  end

  private

  def service
    NotefulService.new
  end
end
