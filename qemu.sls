

{% set cpu_model = salt['grains.get']('cpu_model', '') %}

{% if  'INTEL' in cpu_model|upper %}
  print_message:
    cmd.run:
      - name: 'echo INTEL CPU detected'
{% endif %}



