{{/*
The short name of the chart.
*/}}
{{- define "hl-k3s.penpot.shortname" -}}
{{- printf "%s" "penpot" -}}
{{- end -}}

{{/*
Expand the name of the chart.
*/}}
{{- define "hl-k3s.penpot.fullname" -}}
{{- printf "%s-%s" .Release.Name "penpot" | trunc 63 | trimSuffix "-" -}}
{{- end -}}