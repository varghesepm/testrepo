{{- define "pod" -}}
{{- with .Values.imagePullSecrets }}
imagePullSecrets:
  {{- toYaml . | nindent 2 }}
{{- end }}
serviceAccountName: foo
containers:
  - name: foo
    image: nginx:latest
{{- end }}