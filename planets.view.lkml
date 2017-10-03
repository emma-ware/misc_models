view: planets {

derived_table: {
  sql:
      (Select 1 as ID, 1 as position, 'Mercury' as name, 0.00017 as size_mj, 0.39 as distance_au, '1753-01-01' as discovered) UNION ALL
      (select 2 as ID, 2 as position, 'Venus' as name, 0.0026 as size_mj, 0.723 as distance_au,'1753-01-01' as discovered) UNION ALL
      (select 3 as ID, 3 as position, 'Earth' as name, 0.0031 as size_mj, 1.0 as distance_au,'1753-01-01' as discovered) UNION ALL
      (select 4 as ID, 4 as position, 'Mars' as name, 0.00033 as size_mj, 1.524 as distance_au,'1753-01-01' as discovered) UNION ALL
      (select 5 as ID, 5 as position, 'Jupiter' as name, 1.0 as size_mj, 5.203 as distance_au,'1753-01-01' as discovered) UNION ALL
      (select 6 as ID, 6 as position, 'Saturn' as name, 0.299 as size_mj, 9.539 as distance_au,'1753-01-01' as discovered) UNION ALL
      (select 7 as ID, 7 as position, 'Uranus' as name, 0.0457 as size_mj, 19.18 as distance_au,'1781-01-01' as discovered) UNION ALL
      (select 8 as ID, 8 as position, 'Neptune' as name, 0.053 as size_mj, 30.06 as distance_au,'1846-01-01' as discovered) UNION ALL
      (select 9 as ID, 9 as position, 'X' as name, NULL as size_mj, 49 as distance_au,'2016-01-20' as discovered)

      ;;

}

dimension: distance_from_sun{
  description: "distance in AU"
  type: number
  sql: ${TABLE}.distance_au ;;
}


dimension: planet_id {
  primary_key: yes
  type: number
  sql: ${TABLE}.ID ;;
}

dimension: position {
  description: "Order in the solar system"
  type: number
  sql: ${TABLE}.position ;;
}

dimension: planet_name {
    type: string
    sql: ${TABLE}.name ;;
  }

dimension: discovered_date {
  type: date
  sql: ${TABLE}.discovered ;;
}

  dimension: mass {
    description: "Mass of Planet in Jupiter Masses"
    type: number
    sql: ${TABLE}.size_mj ;;
  }

}

#       (7, 7, 'Uranus', 0.0457, 19.18, '1781-01-01'),
#       (8, 8, 'Neptune', 0.053, 30.06, '1846-01-01'),
#       (9, 9, 'X', NULL, 49, '2016-01-20');
