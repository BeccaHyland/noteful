class Note
  attr_reader :description,
              :tag

  def initialize(data)
    @description = data[:Description]
    @tag = data[:Tag]
  end
end
