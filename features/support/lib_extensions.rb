module Lib
  def generate_costumer_with type
    Costumer.new type
  end

  def costumer type
    costumers = {
      'costumer already exist': :existing,
      'costumer with non existing email': :non_existent_email,
      'costumer typed incorrect password': :incorrect_password,
      'new customer': :customer
    }.freeze
    generate_costumer_with (costumers[type.downcase.to_sym])
  end
end
World(Lib)
