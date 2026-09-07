{{/*
  Function: common.openfga.endpoint
  Description: Returns the OpenFGA gRPC endpoint using the standard 4-level lookup

  Usage: {{ include "common.openfga.endpoint" . }}

  Lookup order:
    1. .Values.openfga.endpointOverride
    2. .Values.global.openfga.endpoint
    3. .Values.openfga.endpoint
    4. .Values.common.defaults.openfga.endpoint
*/}}
{{- define "common.openfga.endpoint" -}}
{{- include "common.getKeyValue" (dict "Values" .Values "key" "openfga.endpoint") -}}
{{- end -}}
