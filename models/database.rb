class Database
  attr_accessor :db
  def initialize
    @db = JsonStore.new("oop2.db")
    @db.pull
  end

  def load(name)
    db.get(name)
  end

  def store(name, object)
    db.set(name, object)
  end
end
