## Bingeflix Docs
This file contains docs blocks for Bingeflix sources

## Users
This section contains documentation from the Bingeflix Users table.

{% docs bingeflix_user_id %}
The unique identifier of the Bingeflix user.
{% enddocs %}

{% docs user_created_at %}
When the user's account was created.
{% enddocs %}

{% docs phone_number %}
The user's phone number. PII.
{% enddocs %}

{% docs deleted_at %}
When the user's account was deleted (This is NULL if the account is not deleted.)
{% enddocs %}

{% docs username %}
The username used for login
{% enddocs %}

{% docs user_full_name %}
The user's full name. PII.
{% enddocs %}

{% docs user_sex %}
The user's sex at birth. PII.
{% enddocs %}

{% docs email %}
The user's email. PII.
{% enddocs %}

{% docs birthdate %}
The user's birthdate. PII.
{% enddocs %}

{% docs region %}
The state or region the user resides in (i.e. the state or province).
{% enddocs %}

{% docs country %}
The country the user resides in
{% enddocs %}

## Events
This section contains documentation from the Bingeflix Events table.

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
