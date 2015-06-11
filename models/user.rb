User = Struct.new(:name, :age, :preference) do

  def save
    DB.store(:user, self)
  end

  def self.all
    DB.all(:user)
  end

  def self.find(search_string)

  end

  def post(body)
    preference.each do |social_network|
      social_network.new(name).post(body)
    end
  end

end
