{{

  rolling_agg_n_periods(
	column_name="revenue",
	partition_by="user_id",
	order_by="created_at",
	agg_type="avg",
	periods=7
	)

}}
