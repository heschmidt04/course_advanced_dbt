## Bingeflix Docs
This file contains docs blocks for Bingeflix sources

## Users
{% docs users %}
This section contains documentation from the Bingeflix Users table.
{% enddocs %}

{% docs bingeflix_user_id %}
The unique identifier of the Bingeflix user.
{% enddocs %}

{% docs user_created_at %}
When the user's account was created.
{% enddocs %}

{% docs phone_number %}
The user's phone number. PII.
{% enddocs %}

{% docs created_at %}
When the user's account was created (This is NULL if the account is not deleted.)
{% enddocs %}

{% docs deleted_at %}
When the user's account was deleted (This is NULL if the account is not deleted.)
{% enddocs %}

{% docs name %}
The name used for user
{% enddocs %}

{% docs username %}
The username used for login
{% enddocs %}

{% docs user_full_name %}
The user's full name. PII.
{% enddocs %}

{% docs sex %}
The user's sex at birth. PII.
{% enddocs %}

{% docs email %}
The user's email. PII.
{% enddocs %}

{% docs birthdate %}
The user's birthdate. PII.
{% enddocs %}

{% docs current_age %}
The user's current_age. PII 
{% enddocs %}

{% docs age_at_acquisition %}
The user's at sign up with Bingeflix
{% enddocs %}

{% docs region %}
The state or region the user resides in (i.e. the state or province).
{% enddocs %}

{% docs country %}
The country the user resides in
{% enddocs %}

## Events
{% docs events %}
This section contains documentation from the Bingeflix Events table.
{% enddocs %}

{% docs session_id %}
The unique identifier of the session in the Bingeflix application.
{% enddocs %}

{% docs event_created_at %}
When the event was logged.
{% enddocs %}

{% docs event_name %}
The name of the event. Possible values:
- User Logged In
- User Logged Out
- Video Watched
- Page Viewed
- CTA Clicked
- Button Clicked
{% enddocs %}

{% docs event_id %}
The unique identifer for the event, integer.
{% enddocs %}

## Subscription plans 
This section contains information about various subscription plans available on Bingeflix.

{% docs subscription_plan_id %}
The unique identifier of the subscription plan.
{% enddocs %}

{% docs plan_name %}
The name of the subscription plan.
{% enddocs %}

{% docs pricing %}
The price of the subscription.
{% enddocs %}

{% docs payment_period %}
The recurring payment period for the subscription.
{% enddocs %}

{% docs starts_at%}
The date the subscription starts
{% enddocs %}

{% docs ends_at%}
The date the subscription ends
{% enddocs %}

{% docs subscription_id %}
The subscription id 
{% enddocs %}
