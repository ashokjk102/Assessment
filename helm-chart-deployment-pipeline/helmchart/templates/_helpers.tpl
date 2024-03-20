{{/*
Expand the name of the chart.
*/}}
{{- define "helmchart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}


{{/* Web Server */}}
{{- define "web-server-name" -}}
{{- default "web-server" .Values.webServer.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "web-server-label" -}}
{{- default "web-server" .Values.webServer.label.app | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "web-server-container-name" -}}
{{- default "web-server-container" .Values.webServerContainerName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "webserver-sa" -}}
{{- default "webserver-sa" .Values.serviceAccount.webserverSaName | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{- define "web-server-role-name" -}}
{{- default "web-server-role" .Values.webServer.RoleName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "web-server-role-binding-name" -}}
{{- default "web-server-role-binding" .Values.webServer.RoleBindingName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "web-server-pv-name" -}}
{{- default "web-server-pv" .Values.webServer.PvName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "web-server-pvc-name" -}}
{{- default "web-server-pvc" .Values.webServer.PvcName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "web-server-service-name" -}}
{{- default "web-service" .Values.service.webServer.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "web-server-service-label-name" -}}
{{- default "web-service" .Values.service.webServer.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "web-server-image" -}}
{{ .Values.imageCredentials.registry }}{{ .Values.images.webserver.repository }}:{{ .Values.images.webserver.tag | default "latest" }}
{{- end -}}

{{- define "web-server-image-pull-policy" -}}
{{- default "IfNotPresent" .Values.images.webserver.pullPolicy -}}
{{- end -}}

{{/* App Server */}}
{{- define "app-server-name" -}}
{{- default "app-server" .Values.appServer.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app-server-label" -}}
{{- default "app-server" .Values.appServer.label.app | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app-server-container-name" -}}
{{- default "app-server-container" .Values.appServer.ContainerName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "appserver-sa" -}}
{{- default "app-server-sa" .Values.serviceAccount.appserverSaName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app-server-role-name" -}}
{{- default "app-server-role" .Values.appServer.RoleName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app-server-role-binding-name" -}}
{{- default "app-server-role-binding" .Values.appServer.RoleBindingName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app-server-pv-name" -}}
{{- default "app-server-pv" .Values.appServer.PvName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app-server-pvc-name" -}}
{{- default "app-server-pvc" .Values.appServer.PvcName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app-server-service-name" -}}
{{- default "app-service" .Values.service.appServer.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app-server-service-label-name" -}}
{{- default "app-service" .Values.service.appServer.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app-server-image" -}}
{{ .Values.imageCredentials.registry }}{{ .Values.images.appserver.repository }}:{{ .Values.images.appserver.tag | default "latest" }}
{{- end -}}

{{- define "app-server-image-pull-policy" -}}
{{- default "IfNotPresent" .Values.images.appserver.pullPolicy -}}
{{- end -}}

{{/* DB Server */}}
{{- define "db-server-name" -}}
{{- default "db-server" .Values.dbServer.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "db-server-label" -}}
{{- default "db-server" .Values.dbServer.label.app | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "db-server-container-name" -}}
{{- default "db-server-container" .Values.dbServer.ContainerName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "dbserver-sa" -}}
{{- default "db-server-sa" .Values.serviceAccount.dbserverSaName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "db-server-role-name" -}}
{{- default "db-server-role" .Values.dbServer.RoleName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "db-server-role-binding-name" -}}
{{- default "db-server-role-binding" .Values.dbServer.RoleBindingName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "db-server-pv-name" -}}
{{- default "db-server-pv" .Values.dbServer.PvName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "db-server-pvc-name" -}}
{{- default "db-server-data" .Values.dbServer.PvcName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "db-server-service-name" -}}
{{- default "db-service" .Values.service.dbServer.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "db-server-service-label-name" -}}
{{- default "db-service" .Values.service.dbServer.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "db-server-image" -}}
{{ .Values.imageCredentials.registry }}{{ .Values.images.dbserver.repository }}:{{ .Values.images.dbserver.tag | default "latest" }}
{{- end -}}


{{- define "db-server-image-pull-policy" -}}
{{- default "IfNotPresent" .Values.images.dbserver.pullPolicy -}}
{{- end -}}


{{/* Ingress */}}
{{- define "ingress-name" -}}
{{- default "application-ingress" .Values.ingress.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ingress-host" -}}
{{- default "" (index .Values.ingress.hosts 0).host | trimSuffix "/" -}}
{{- end -}}

{{- define "ingress-tls-secret-name" -}}
{{- default "tls-secret" .Values.ingressTLSSecretName | trunc 63 | trimSuffix "-" -}}
{{- end -}}



{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "helmchart.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "helmchart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "helmchart.labels" -}}
helm.sh/chart: {{ include "helmchart.chart" . }}
{{ include "helmchart.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "helmchart.selectorLabels" -}}
app.kubernetes.io/name: {{ include "helmchart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

