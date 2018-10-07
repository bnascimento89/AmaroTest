class Costumer
    include DataMagic
    attr_accessor :name, :last_name, :email, :password, :confirmation_password, :cpf

    def initialize create_type
      obj = data_for "costumers/#{create_type.to_s}"
      @name = obj["name"]
      @last_name = obj["last_name"]
      @email = obj["email"]
      @cpf = DocumentosBr.cpf_formatted
      @phone = obj["phone"]
      @birthdate = obj["birthdate"]
      @password = obj["password"]
      @confirmation_password = obj["confirmation_password"]
    end
end
