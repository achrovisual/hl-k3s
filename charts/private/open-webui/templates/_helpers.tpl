{{/*
The short name of the chart.
*/}}
{{- define "open-webui.shortname" -}}
{{- printf "%s" "open-webui" -}}
{{- end -}}

{{/*
Expand the name of the chart.
*/}}
{{- define "open-webui.fullname" -}}
{{- printf "%s-%s" .Release.Name "open-webui" | trunc 63 | trimSuffix "-" -}}
{{- end -}}