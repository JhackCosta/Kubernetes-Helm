{{- define "alura-affods-app.labels" -}}
app.kubernetes.io/name: {{.Chart.Name}}
app.kubernetes.io/instance: {{.Release.Name}}
app.kubernetes.io/version: {{.Chart.ApiVersion}}
app.kubernetes.io/managed-by: {{.Release.Service}}
{{- end -}}