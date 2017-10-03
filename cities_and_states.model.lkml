connection: "thelook"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project


explore: city_and_state_table {
  hidden: no
}

view: city_and_state_table {
  derived_table: {
    sql:
          (select 1 as user_id, 'NYC' as city, 'New York' as state) union all
          (select 2 as user_id, 'NYC' as city, 'New York' as state) union all
          (select 3 as user_id, 'NYC' as city, 'New York' as state) union all
          (select 4 as user_id, 'NYC' as city, 'New York' as state) union all
          (select 5 as user_id, 'NYC' as city, 'New York' as state) union all
          (select 6 as user_id, 'Buffalo' as city, 'New York' as state) union all
          (select 7 as user_id, 'Buffalo' as city, 'New York' as state) union all
          (select 8 as user_id, 'Buffalo' as city, 'New York' as state) union all
          (select 9 as user_id, 'Jersey City' as city, 'New Jersey' as state) union all
          (select 10 as user_id, 'Jersey City' as city, 'New Jersey' as state) union all
          (select 11 as user_id, 'Jersey City' as city, 'New Jersey' as state) union all
          (select 12 as user_id, 'Jersey City' as city, 'New Jersey' as state) union all
          (select 13 as user_id, 'Hoboken' as city, 'New Jersey' as state) union all
          (select 14 as user_id, 'Hoboken' as city, 'New Jersey' as state)
         ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }


  measure: count {
    type: count
  }


}
