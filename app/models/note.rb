class Note
  attr_reader :description,
              :tag,
              :dateCreated

  def initialize(data)
    @description = data[:Description]
    @tag = data[:Tag]
    @dateCreated = data[:dateCreated]
  end
end
