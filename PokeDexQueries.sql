-- List of all Pokemon and their respective abilities 
select "POKEDEX"."nationalDexNumber", "POKEDEX"."name", "ABILITIES"."Ability", "ABILITIES"."Hidden" from "POKEDEX"
join "ABILITIES"
on "POKEDEX"."name" = "ABILITIES"."Pokemon";
--where "POKEDEX"."name" = 'Eevee'

-- List of Pokemon name and number of abilities they have
select "POKEDEX"."name", count(*) from "POKEDEX"
join "ABILITIES"
on "POKEDEX"."name" = "ABILITIES"."Pokemon"
--where "ABILITIES"."Ability" = 'Adaptability'
group by "POKEDEX"."name"
order by 2 desc;

-- List of pokemon ablities and number of pokemon using it
select "ABILITIES"."Ability", count(*) from "POKEDEX"
join "ABILITIES"
on "POKEDEX"."name" = "ABILITIES"."Pokemon"
group by "ABILITIES"."Ability"
order by 2 desc;