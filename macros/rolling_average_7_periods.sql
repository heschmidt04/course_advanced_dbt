{% macro rolling_average_periods(column_name, partition_by, order_by, num_preceding_rows) %}

    {% if not column_name %}
        {% set column_name = column_name %}
    {% endif %}

    {% if not partition_by %}
        {% set partition_by = partition_by %}
    {% endif %}

    {% if not order_by %}
        {% set order_by = order_by %}
    {% endif %}

    {% if not num_preceding_rows %}
        {% set num_preceding_rows = 6 %}
    {% endif %}

    avg({{ column_name }}) OVER (
        PARTITION BY {{ partition_by }}
        ORDER BY {{ order_by }}
        ROWS BETWEEN {{ num_preceding_rows - 1 }} PRECEDING AND CURRENT ROW
    ) AS avg_{{ num_preceding_rows }}_periods_{{ column_name }}

{% endmacro %}
