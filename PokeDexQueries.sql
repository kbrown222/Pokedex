-- List of all Pokemon and their respective abilities 
select "ABILITIES"."nationalDexNumber", "ABILITIES"."name", "BRIDGE_POKEMON"."Ability", "BRIDGE_POKEMON"."Hidden" from "ABILITIES"
join "BRIDGE_POKEMON"
on "ABILITIES"."name" = "BRIDGE_POKEMON"."Pokemon"
--where "ABILITIES"."name" = 'Eevee'

-- List of Pokemon name and number of abilities they have
select "ABILITIES"."name", count(*) from "ABILITIES"
join "BRIDGE_POKEMON"
on "ABILITIES"."name" = "BRIDGE_POKEMON"."Pokemon"
--where "BRIDGE_POKEMON"."Ability" = 'Adaptability'
group by "ABILITIES"."name"
order by 2 desc

-- List of pokemon ablities and number of pokemon using it
select "BRIDGE_POKEMON"."Ability", count(*) from "ABILITIES"
join "BRIDGE_POKEMON"
on "ABILITIES"."name" = "BRIDGE_POKEMON"."Pokemon"
group by "BRIDGE_POKEMON"."Ability"
order by 2 desc