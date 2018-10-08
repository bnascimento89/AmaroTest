class Costumer
    include DataMagic
    attr_accessor :name, :last_name, :email, :cpf, :phone, :birthdate, :password, :password_confirmation

    def initialize create_type
      obj = data_for "costumers/#{create_type.to_s}"
      @name = obj["name"]
      @last_name = obj["last_name"]
      @email = obj["email"]
      @cpf = DocumentosBr.cpf_formatted
      @phone = obj["phone"]
      @birthdate = obj["birthdate"]
      @password = obj["password"]
      @password_confirmation = obj["password_confirmation"]
    end
end
