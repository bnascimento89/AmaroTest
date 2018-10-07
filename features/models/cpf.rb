module MyData
  def cpf
    puts "passou aqui"
    DocumentosBr.cpf_formatted
  end
end

DataMagic.add_translator MyData
