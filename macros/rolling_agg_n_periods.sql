{% macro rolling_agg_n_periods(column_name, partition_by, order_by="created_at", agg_type="avg", periods="7") %}

    {{ agg_type }}({{ column_name }}) OVER (
        PARTITION BY {{ partition_by }}
        ORDER BY {{ order_by }}
        ROWS BETWEEN {{ num_preceding_rows - 1 }} PRECEDING AND CURRENT ROW
    ) AS {{ agg_type }}{{ periods }}_periods_{{ column_name }}

{% endmacro %}
