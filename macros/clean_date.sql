{# reference url https://medium.com/@noahlk/three-dbt-macros-i-use-every-day-2966b3ad9b26 #}
{# reference url https://gist.githubusercontent.com/noahfkennedy/52fff8d6d30e029ac2246382d5c79a43/raw/bf7eb872550f8c500f4fe4198acda3c71f5299ef/compare_date1_before_date2.sql #}

{%- macro clean_date(dt) -%}

    {% if dt | length > 10 %}
        left({{ dt }}, 10)
    {% else %}
        {{ dt }}
    {% endif %}

{%- endmacro -%}
