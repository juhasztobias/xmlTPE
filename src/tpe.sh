delete_schema(file_name){
  sed 's% xmlns="http://schemas.sportradar.com/sportsapi/soccer/v4"%%' file_name >> aux.xml
  rm file_name
  mc aux.xml file_name
}

extract_season_data(){
  # Ejecuta el comando para extraer los datos directamente de season_info.xml y season_summaries.xml
  # Deja un archivo que se llama season_data.xsl que valida el season_data.xsd

}

valid_data(){
  return 1
}

generate_markdown(){

}

init(){
  # Elimino xmlns="http://schemas.sportradar.com/sportsapi/soccer/v4 de cada archivo

  delete_schema("seasons.xml")
  delete_schema("season_info.xml")
  delete_schema("season_summaries.xml")

  if[ valid_data() == 1 ]{
    extract_season_data()
    generate_markdown()
  }
}

init()