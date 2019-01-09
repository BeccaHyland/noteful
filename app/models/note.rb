class Note
  attr_reader :description,
              :tag,
              :dateCreated

  def initialize(data)
    @description = data[:description]
    @tag = data[:tag]
    @dateCreated = data[:dateCreated]
  end
end
