- dashboard: vaccine_distribution_gps
  title: Vaccine Distribution Gps
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - name: Facilities registered
    type: text
    title_text: Facilities registered
    subtitle_text: by type and county
    body_text: ''
    row: 5
    col: 0
    width: 9
    height: 5
  - title: CA2 MED TAKE 1000 MAP HOSPITALS
    name: CA2 MED TAKE 1000 MAP HOSPITALS
    model: slg_covid
    explore: jjl_capacity
    type: looker_map
    fields: [jjl_capacity.county_fips, jjl_capacity.county, jjl_capacity.type, jjl_capacity.reg_cap_est_low_take_1000,
      jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000]
    filters:
      jjl_capacity.type: Hospital
    sorts: [jjl_capacity.reg_cap_est_med_take_1000 desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      jjl_capacity.reg_count: 167
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    map_latitude: 37.57077327183258
    map_longitude: -115.22817134857178
    map_zoom: 5
    hidden_fields: [jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000,
      jjl_capacity.reg_cap_est_low_take_1000]
    hidden_points_if_no: [jjl_capacity.reg_cap_est_med_take_1000]
    title_hidden: true
    listen: {}
    row: 24
    col: 0
    width: 8
    height: 7
  - title: CA2 MED TAKE 1000 MAP CLINIC
    name: CA2 MED TAKE 1000 MAP CLINIC
    model: slg_covid
    explore: jjl_capacity
    type: looker_map
    fields: [jjl_capacity.county_fips, jjl_capacity.county, jjl_capacity.type, jjl_capacity.reg_cap_est_low_take_1000,
      jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000]
    filters:
      jjl_capacity.type: Clinic
    sorts: [jjl_capacity.reg_cap_est_med_take_1000 desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      jjl_capacity.reg_count: 167
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    map_latitude: 37.0733268152893
    map_longitude: -114.79193687438965
    map_zoom: 5
    hidden_fields: [jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000,
      jjl_capacity.reg_cap_est_low_take_1000]
    hidden_points_if_no: [jjl_capacity.reg_cap_est_med_take_1000]
    title_hidden: true
    listen: {}
    row: 24
    col: 8
    width: 8
    height: 7
  - title: CA2 MED TAKE 1000 MAP LTCF
    name: CA2 MED TAKE 1000 MAP LTCF
    model: slg_covid
    explore: jjl_capacity
    type: looker_map
    fields: [jjl_capacity.county_fips, jjl_capacity.county, jjl_capacity.type, jjl_capacity.reg_cap_est_low_take_1000,
      jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000]
    filters:
      jjl_capacity.type: Long Term Care Facility
    sorts: [jjl_capacity.reg_cap_est_med_take_1000 desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      jjl_capacity.reg_count: 167
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    map_latitude: 37.0733268152893
    map_longitude: -114.79193687438965
    map_zoom: 5
    hidden_fields: [jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000,
      jjl_capacity.reg_cap_est_low_take_1000]
    hidden_points_if_no: [jjl_capacity.reg_cap_est_med_take_1000]
    title_hidden: true
    listen: {}
    row: 24
    col: 16
    width: 8
    height: 7
  - title: CA2 MED TAKE 1000 MAP PHARMACY
    name: CA2 MED TAKE 1000 MAP PHARMACY
    model: slg_covid
    explore: jjl_capacity
    type: looker_map
    fields: [jjl_capacity.county_fips, jjl_capacity.county, jjl_capacity.type, jjl_capacity.reg_cap_est_low_take_1000,
      jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000]
    filters:
      jjl_capacity.type: Chain pharmacies
    sorts: [jjl_capacity.reg_cap_est_med_take_1000 desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      jjl_capacity.reg_count: 167
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    map_latitude: 37.0733268152893
    map_longitude: -114.79193687438965
    map_zoom: 5
    hidden_fields: [jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000,
      jjl_capacity.reg_cap_est_low_take_1000]
    hidden_points_if_no: [jjl_capacity.reg_cap_est_med_take_1000]
    title_hidden: true
    listen: {}
    row: 33
    col: 8
    width: 8
    height: 7
  - title: CA2 MED TAKE 1000 MAP WORKPLACES
    name: CA2 MED TAKE 1000 MAP WORKPLACES
    model: slg_covid
    explore: jjl_capacity
    type: looker_map
    fields: [jjl_capacity.county_fips, jjl_capacity.county, jjl_capacity.type, jjl_capacity.reg_cap_est_low_take_1000,
      jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000]
    filters:
      jjl_capacity.type: Workplace events
    sorts: [jjl_capacity.reg_cap_est_med_take_1000 desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      jjl_capacity.reg_count: 167
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    map_latitude: 37.0733268152893
    map_longitude: -114.79193687438965
    map_zoom: 5
    hidden_fields: [jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000,
      jjl_capacity.reg_cap_est_low_take_1000]
    hidden_points_if_no: [jjl_capacity.reg_cap_est_med_take_1000]
    title_hidden: true
    listen: {}
    row: 33
    col: 0
    width: 8
    height: 7
  - title: CA2 MED TAKE 1000 MAP HOSPICE
    name: CA2 MED TAKE 1000 MAP HOSPICE
    model: slg_covid
    explore: jjl_capacity
    type: looker_map
    fields: [jjl_capacity.county_fips, jjl_capacity.county, jjl_capacity.type, jjl_capacity.reg_cap_est_low_take_1000,
      jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000]
    filters:
      jjl_capacity.type: Hospice Facility
    sorts: [jjl_capacity.reg_cap_est_med_take_1000 desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      jjl_capacity.reg_count: 167
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    map_latitude: 37.3004801084253
    map_longitude: -114.68636512756349
    map_zoom: 5
    hidden_fields: [jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000,
      jjl_capacity.reg_cap_est_low_take_1000]
    hidden_points_if_no: [jjl_capacity.reg_cap_est_med_take_1000]
    title_hidden: true
    listen: {}
    row: 33
    col: 16
    width: 8
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: Counties where registered hospitals can accept 1000 doses
    row: 22
    col: 0
    width: 8
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: Counties where registered LTCFs can accept 1000 doses
    row: 22
    col: 16
    width: 8
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: Counties where registered pharmacies can accept 1000 doses
    row: 31
    col: 8
    width: 8
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: Counties where registered workplaces can accept 1000 doses
    row: 31
    col: 0
    width: 8
    height: 2
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: Counties where registered clinics can accept 1000 doses
    row: 22
    col: 8
    width: 8
    height: 2
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: Counties where registered hospices can accept 1000 doses
    row: 31
    col: 16
    width: 8
    height: 2
  - name: CDC Phases and Prioritization
    type: text
    title_text: CDC Phases and Prioritization
    body_text: |-
      [Guidelines](https://www.cdc.gov/vaccines/imz-managers/downloads/COVID-19-Vaccination-Program-Interim_Playbook.pdf) **Section 3** request jurisdictions _focus initial efforts on reaching critical populations..._ we have aligned facility types to the 3-phases:

      1. Phase 1: Potentially **limited supply** of COVID-19 vaccine doses available
      2. Phase 2: Large number of vaccine doses available
      3. Phase 3: **Sufficient supply** of vaccine for entire population (surplus)
    row: 0
    col: 0
    width: 9
    height: 5
  - name: Facility type and phase prioritization
    title: Facility type and phase prioritization
    model: slg_covid
    explore: jjl_capacity
    type: looker_grid
    fields: [jjl_capacity.type, jjl_capacity.phase]
    sorts: [jjl_capacity.phase]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    row: 0
    col: 9
    width: 15
    height: 5
  - name: Facilities registered by county and type
    title: Facilities registered by county and type
    model: vaccine_distro
    explore: jjl_capacity
    type: looker_grid
    fields: [jjl_capacity.county, jjl_capacity.type, jjl_capacity.reg_count, jjl_capacity.count_jjl_capacity,
      jjl_capacity.reg_percent_calculated]
    sorts: [jjl_capacity.reg_count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 37.82198884575637
    map_longitude: -103.30839157104492
    map_zoom: 5
    hidden_fields: []
    series_column_widths:
      jjl_capacity.reg_count: 199
      jjl_capacity.county: 124
      jjl_capacity.type: 204
      jjl_capacity.count_jjl_capacity: 141
      jjl_capacity.reg_percent_calculated: 133
      jjl_capacity.reg_cap_est_low: 191
      jjl_capacity.reg_cap_est_med: 196
      jjl_capacity.reg_cap_est_high: 196
    title_hidden: true
    listen: {}
    row: 5
    col: 9
    width: 15
    height: 5
  - name: Facilities estimated capacity
    type: text
    title_text: Facilities estimated capacity
    subtitle_text: by type and county, registered facilities only
    body_text: Operating at low/med/high efficiency, figures are per **week**
    row: 10
    col: 0
    width: 9
    height: 5
  - name: Facilities estimated capacity by type and county
    title: Facilities estimated capacity by type and county
    model: vaccine_distro
    explore: jjl_capacity
    type: looker_grid
    fields: [jjl_capacity.county, jjl_capacity.type, jjl_capacity.reg_cap_est_low,
      jjl_capacity.reg_cap_est_med, jjl_capacity.reg_cap_est_high]
    sorts: [jjl_capacity.reg_cap_est_med desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 37.82198884575637
    map_longitude: -103.30839157104492
    map_zoom: 5
    hidden_fields: []
    series_column_widths:
      jjl_capacity.reg_count: 167
      jjl_capacity.county: 122
      jjl_capacity.type: 204
      jjl_capacity.count_jjl_capacity: 138
      jjl_capacity.reg_percent_calculated: 133
      jjl_capacity.reg_cap_est_low: 175
      jjl_capacity.reg_cap_est_med: 179
      jjl_capacity.reg_cap_est_high: 180
    title_hidden: true
    listen: {}
    row: 10
    col: 9
    width: 15
    height: 5
  - name: Which facilities can accept 1000 doses
    type: text
    title_text: Which facilities can accept 1000 doses
    subtitle_text: by type and county, registered facilities only
    body_text: Operating at low/med/high efficiency, figures are per **week**
    row: 15
    col: 0
    width: 24
    height: 3
  - name: 1000 doses
    title: 1000 doses
    model: vaccine_distro
    explore: jjl_capacity
    type: looker_grid
    fields: [jjl_capacity.county_fips, jjl_capacity.county, jjl_capacity.type, jjl_capacity.reg_cap_est_low_take_1000,
      jjl_capacity.reg_cap_est_med_take_1000, jjl_capacity.reg_cap_est_high_take_1000]
    sorts: [jjl_capacity.county]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      jjl_capacity.reg_count: 167
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 37.82198884575637
    map_longitude: -103.30839157104492
    map_zoom: 5
    hidden_fields: [jjl_capacity.county_fips]
    title_hidden: true
    listen: {}
    row: 18
    col: 0
    width: 24
    height: 4
