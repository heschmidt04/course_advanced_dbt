% macro get_table_exists(input_table, threshold) %}

    {# Try adapter to see if table exists #}
    {%- set table_exists = adapter.get_relation(database=var('project_id'),
                                schema=test_schema,
                                identifier=test_alias) is not none -%}
    {# If table doesn't exist, return FALSE #}
    {% if not table_exists %}

        {{ return(table_exists) }}

    {% else %}

        {% set test_count_query %}
            SELECT count(*)
            FROM {{var('project_id')}}.{{input_table}}
        {% endset %}

        {% set results = run_query(test_count_query) %}

        {% if execute %}
            {{log("results" ~ results.columns[0].values()[0], info=TRUE )}}
            {% set count_above_zero = results.columns[0].values()[0] %}
        {% else %}
            {% set count_above_zero = 0 %}
        {% endif %}

        {{ return(count_above_zero > threshold) }}

    {% endif %}

{% endmacro %}
