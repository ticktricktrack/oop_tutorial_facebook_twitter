Facebook = Struct.new(:username, :body) do
  include UseDatabase

  def post(body)
    self.body = body
    save
  end

  # def save
  #   DB.store(:facebook, self)
  # end

  # def self.all
  #   DB.all(:facebook)
  # end

  # def self.find(search_string)

  # end
end
