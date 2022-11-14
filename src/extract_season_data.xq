for $season in doc("season_info")//season_info/season
return
    <name>{@name}</name>
for $competition in doc("season_info")//season/competition
return
    <competition> {@name} </competition>
for $season in doc("season_info")//season
return
    <date>
        <start_date>{@start_date}</start_date>
        <end_date>{@end_date}</end_date>
        <year> {@year} </year>
    </date>

- Cada uno de los elementos stage deben extraerse de season_info//stages/stage; 
deben estar ordenados por el atributo stage/@order.
- Por cada “stage”, se debe crear uno o varios elementos group (que deben extraerse 
de stage//group), y que tendrán una lista de competidores (uno o varios elementos 
competitor), y una lista de elementos “event”.
- El elemento competitor/name debe extraerse del atributo @name de 
group//competitor.
- El elemento competitor/country debe extraerse del atributo @country de 
group//competitor
--------------------------------------------------- archivo summ
- Dentro de cada elemento “group”, habrán varios elementos “event” que deben
extraerse del elemento summary y que pertenezcan a ese grupo en cuestión (es decir,
cuyo atributo sport_event/sport_event_context//group/@id sea igual al id del
grupo).
- El elemento event/status debe extraerse del atributo @match_status de
sport_event_status/@match_status.
- El elemento local/name debe extraerse del attributo @name de competitor cuyo
@qualifier sea igual a “home”.
- El elemento local/score debe extraerse del attributo @home_score de
summary/sport_event_status.
- El elemento visitor/name debe extraerse del attributo @name de competitor cuyo
@qualifier sea igual a “away”.
- El elemento visitor/score debe extraerse del attributo @away_score de
summary/sport_event_status.
