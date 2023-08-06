SELECT
	date_month,
	user_id,
	subscription_id,
	mrr_amount,
	{{
  	    rolling_agg_n_periods(
		column_name="mrr_amount",
		partition_by="user_id, subscription_id",
		order_by="date_month",
		agg_type="avg",
		periods=7
		)
	}}
    FROM {{ ref('fct_mrr') }}
