{# reference url https://medium.com/@noahlk/three-dbt-macros-i-use-every-day-2966b3ad9b26 #}

{% macro concat_cols(column1, column2) %}

  {{column1}} + {{column2}}

{% endmacro %}
