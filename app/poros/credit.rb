class Credit

  attr_reader :source, :artist_name

  def initialize(data)
    @source = data[:user][:links][:photos]
    @artist_name = data[:user][:name]
  end
end
