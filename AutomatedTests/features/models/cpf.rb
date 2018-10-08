module MyData
  def cpf
    DocumentosBr.cpf_formatted
  end
end

DataMagic.add_translator MyData
