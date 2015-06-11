Twitter = Struct.new(:username, :body) do
  include UseDatabase

  def post(body)
    self.body = body
    save
  end

  

  
end
