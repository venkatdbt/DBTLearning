{% set my_var = "Hello World" %} 

{{ my_var }}

{% set calc= 2 + 2 %}

{{ calc }}



--list 
--List

{% set fruits = ["apple","orange","banana"] %} 

the list fruits names {{ fruits}}

the first fruit {{ fruits[1] }}

--for
{% set my_list = ["apple","orange","banana","burger"] %} 

{% for fruit in my_list %}
       my fav fruits is the {{fruit}}
{% endfor %}

--if condition

{% set temp =40 %}

{% if temp>50 %}
    temp is very high
{% else %}
    temp is low
{% endif %}

--if and for

{%- for fruit in my_list -%}
  {% if fruit == "burger" %}
     {{- fruit -}} is a fooditem
  {%else%}
      {{- fruit -}} is a fruit
  {% endif %}
{%- endfor -%}


{%- for food in my_list -%}
  {% if food == "burger" %}
    {%- set food_type = "burger" -%}
  {%else%}
    {%- set food_type = "fruit" -%}
  {% endif %}
  food {{food}} type is {{food_type}}
{%- endfor -%}


