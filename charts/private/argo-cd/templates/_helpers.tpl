{{/*
The short name of the chart.
*/}}
{{- define "hl-k3s.argo-cd.shortname" -}}
{{- printf "%s" "argo-cd" -}}
{{- end -}}

{{/*
Expand the name of the chart.
*/}}
{{- define "hl-k3s.argo-cd.fullname" -}}
{{- printf "%s-%s" .Release.Name "argo-cd" | trunc 63 | trimSuffix "-" -}}
{{- end -}}