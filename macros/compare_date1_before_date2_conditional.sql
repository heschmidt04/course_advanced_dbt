{# reference url https://medium.com/@noahlk/three-dbt-macros-i-use-every-day-2966b3ad9b26 #}
{# reference url https://gist.githubusercontent.com/noahfkennedy/52fff8d6d30e029ac2246382d5c79a43/raw/bf7eb872550f8c500f4fe4198acda3c71f5299ef/compare_date1_before_date2.sql #}

{%- macro compare_date1_before_date2_conditional(date1_raw, date2_raw, expr) -%}

    {% set date1 = clean_date(date1_raw) %}
    {% set date2 = clean_date(date2_raw) %}

        CASE
            WHEN ({{ date1 }} IS NULL) or ({{ date2 }} IS NULL)
                THEN TRUE
            WHEN least(length({{ date1 }}), length({{ date2 }})) = 7 -- check year month
                THEN substr({{ date1 }}, 1, 7) < substr({{ date2 }}, 1, 7)
            WHEN least(length({{ date1 }}), length({{ date2 }})) = 4 -- check year
                THEN substr({{ date1 }}, 1, 4) < substr({{ date2 }}, 1, 4)
            WHEN least(length({{ date1 }}), length({{ date2 }})) = 10 -- check year-month-day
                THEN {{ date1 }} < {{ date2 }}
            ELSE FALSE
     END

{%- endmacro -%}
