{% if theme.swiftype_key %}
  {% include 'search/swiftype.swig' %}
{% elseif theme.tinysou_Key %}
  {% include 'search/tinysou.swig' %}
  {% elseif theme.googlesearch %}
  {% include 'search/googlesearch.swig' %}
{% elseif config.search.path %}
  {% include 'search/localsearch.swig' %}
{% endif %}
