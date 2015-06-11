class Database
  attr_accessor :db
  def initialize
    @db = JsonStore.new("database.json")
    @db.pull
  end

  def load(name)
    db.pull
    db.get(name)
  end

  def store(name, object)
    db.set(name, object)
    db.merge
    db.push
  end
end
