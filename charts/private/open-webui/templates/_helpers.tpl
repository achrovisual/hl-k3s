{{/*
The short name of the chart.
*/}}
{{- define "hl-k3s.open-webui.shortname" -}}
{{- printf "%s" "open-webui" -}}
{{- end -}}

{{/*
Expand the name of the chart.
*/}}
{{- define "hl-k3s.open-webui.fullname" -}}
{{- printf "%s-%s" .Release.Name "open-webui" | trunc 63 | trimSuffix "-" -}}
{{- end -}}