class Database
  attr_reader :db
  def initialize
    @db = JsonStore.new("db.json")
    @db.pull
  end

  def all(model)
    db.get(model) || []
  end

  def find(model, attribute, query )
    all(model).detect{ |o| o[attribute] == query }
  end

  def store(model, object)
    with_new = all(model).push(object).uniq
    db.set(model, with_new)
    db.merge
    db.push
  end

  def klass(symbol)
    symbol.to_s.capitalize.constantize
  end
end
