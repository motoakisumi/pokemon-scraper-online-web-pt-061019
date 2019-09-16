class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id

  def initialize(id:, name:, type:, db:)
    @name = name
    @type = type
    @id = id
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);", name, type)
  end

  def self.find(id, db)
    result = df.execute("SELECT * FROM pokemon WHERE id = ?", id)[0]
    Pokemon.new(result[0], result[1], result[2], db)
  end

end
