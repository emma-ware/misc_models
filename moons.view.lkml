view: moons {

  derived_table: {
    sql:
        (SELECT 3 as planet_id, 'Moon' as moon_name, 1.0 as moon_mass, 0.00257 as mean_distance) UNION ALL
        (SELECT 4 as planet_id, 'Phobos' as moon_name, 0.00000014 as moon_mass, 0.000062 as mean_distance) UNION ALL
        (SELECT 4 as planet_id, 'Deimos' as moon_name, 0.000000038 as moon_mass, 0.00015 as mean_distance) UNION ALL
        (SELECT 5 as planet_id, 'Io' as moon_name, 1.21 as moon_mass, 0.0028 as mean_distance) UNION ALL
        (SELECT 5 as planet_id, 'Europa' as moon_name, 0.65 as moon_mass, 0.0044 as mean_distance) UNION ALL
        (SELECT 5 as planet_id, 'Ganymede' as moon_name, 2.017 as moon_mass, 0.0071 as mean_distance) UNION ALL
        (SELECT 5 as planet_id, 'Callisto' as moon_name, 1.464 as moon_mass, 0.0126 as mean_distance) UNION ALL
        (SELECT 5 as planet_id, 'Thermisto' as moon_name, NULL as moon_mass, NULL as mean_distance) UNION ALL
        (SELECT 5 as planet_id, 'Leda' as moon_name, NULL as moon_mass, NULL as mean_distance) UNION ALL
        (SELECT 5 as planet_id, 'Himalia' as moon_name, NULL as moon_mass, NULL as mean_distance) UNION ALL
        (SELECT 5 as planet_id, 'Lysithea' as moon_name, NULL as moon_mass, NULL as mean_distance) UNION ALL
        (SELECT 6 as planet_id, 'Mimas' as moon_name, 0.0005 as moon_mass, 0.00124 as mean_distance) UNION ALL
        (SELECT 6 as planet_id, 'Enceladus' as moon_name, 0.002 as moon_mass, 0.00159 as mean_distance) UNION ALL
        (SELECT 6 as planet_id, 'Thethys' as moon_name, 0.008 as moon_mass, 0.00159 as mean_distance) UNION ALL
        (SELECT 6 as planet_id, 'Dione' as moon_name, 0.015 as moon_mass, 0.00159 as mean_distance) UNION ALL
        (SELECT 6 as planet_id, 'Rhea' as moon_name, 0.03 as moon_mass, 0.00159 as mean_distance) UNION ALL
        (SELECT 6 as planet_id, 'Titan' as moon_name, 1.80 as moon_mass, 0.00159 as mean_distance) UNION ALL
        (SELECT 7 as planet_id, 'Miranda' as moon_name, NULL as moon_mass, NULL as mean_distance) UNION ALL
        (SELECT 7 as planet_id, 'Ariel' as moon_name, NULL as moon_mass, NULL as mean_distance) UNION ALL
        (SELECT 7 as planet_id, 'Umbriel' as moon_name, NULL as moon_mass, NULL as mean_distance) UNION ALL
        (SELECT 7 as planet_id, 'Titania' as moon_name, NULL as moon_mass, NULL as mean_distance) UNION ALL
        (SELECT 7 as planet_id, 'Oberon' as moon_name, NULL as moon_mass, NULL as mean_distance) UNION ALL
        (SELECT 7 as planet_id, 'Francisco' as moon_name, NULL as moon_mass, NULL as mean_distance) UNION ALL
        (SELECT 9 as planet_id, 'X' as moon_name, NULL as moon_mass, NULL as mean_distance)






    ;;

  }

  dimension: moons_planet_id {
    type: number
    sql: ${TABLE}.planet_id ;;
  }

  dimension: moon_name {
    type: string
    primary_key: yes
    sql: ${TABLE}.moon_name ;;
  }

  dimension: mean_distance {
    type: number
    sql: ${TABLE}.mean_distance ;;
  }

  dimension: moon_mass {
    type: number
    description: "Mass of Moon as a ration of Earth's Moon's mass"
    sql: ${TABLE}.moon_mass ;;
  }

measure: number_of_moons {
  type: count_distinct
  sql: ${TABLE}.moon_name ;;
}

measure: average_mass {
  type: average
  sql: ${TABLE}.moon_mass;;
  value_format_name: decimal_4
}

measure: aveage_distance {
  type: average
  sql: ${TABLE}.mean_distance ;;
  value_format_name: decimal_4
}





}
