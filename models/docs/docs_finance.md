## Finance
This section contains calculations for the monthly recurring revenue generated per user and subscription for each month.

{% docs surrogate_key %}
The surrogate key. This acts as a primary key for this model.
{% enddocs %}

{% docs mrr_amount %}
The amount of monthly recurring revenue generated from the subscription in a given month.
{% enddocs %}

{% docs mrr_change %}
The change in monthly recurring revenue from the associated subscription versus last month.
{% enddocs %}

{% docs retained_mrr_amount %}
The amount of monthly recurring revenue associated with the subscription retained from the previous month.
{% enddocs %}

{% docs previous_month_mrr_amount %}
The amount of monthly recurring revenue associated with the subscription earned in the previous month.
{% enddocs %}

{% docs change_category %}
The category the subscription falls into based on the current month (e.g. new, churned, retained, reactivated)
{% enddocs %}

{% docs month_retained_number %}
The number of months the subscription has been retained since it was started (first month = 0).
{% enddocs %}

{% docs date_month %}
The calendar month.
{% enddocs %}

