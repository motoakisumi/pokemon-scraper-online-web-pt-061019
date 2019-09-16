class Pokemon
  attr_accessor :name, type, db
  attr_reader :id

  def self.initialize(id = nil, name, type, db)
    @name = name
    @type = type
    @id = id
    @db = db
  end

end
