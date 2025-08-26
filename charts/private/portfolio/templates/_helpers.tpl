{{/*
The short name of the chart.
*/}}
{{- define "hl-k3s.portfolio.shortname" -}}
{{- printf "%s" "portfolio" -}}
{{- end -}}

{{/*
Expand the name of the chart.
*/}}
{{- define "hl-k3s.portfolio.fullname" -}}
{{- printf "%s-%s" .Release.Name "portfolio" | trunc 63 | trimSuffix "-" -}}
{{- end -}}