# base-template Helm Chart

This Helm chart offers a flexible base for deploying Kubernetes applications, simplifying common patterns and supporting various resources.

## Features

* **Deployment**: Manages application deployments, including replica counts, image settings, and resource limits.

* **Service Exposure**: Configures Kubernetes Services (ClusterIP, NodePort, LoadBalancer).

* **Ingress**: Supports Ingress for external access and TLS.

* **Horizontal Pod Autoscaling (HPA)**: Enables automatic scaling based on CPU/memory.

* **Probes**: Configures liveness and readiness health checks.

* **Service Accounts**: Manages Kubernetes Service Accounts for access control.

* **Environment Variables**: Injects plain and secret environment variables.

* **OpenTelemetry Logging**: Integrates logging via the `lgtm.achrovisual.io/logs` Pod annotation, enabling OpenTelemetry collector discovery.

## Installation

To install the `base-template` chart with release name `my-app`:

```
helm install my-app ./base-template
```

## Configuration

The following table lists the configurable parameters and their default values:

| **Key** | **Type** | **Default** | **Description** |
|---|---|---|---|
| `replicaCount` | int | `1` | Number of desired pods. |
| `image.repository` | string | `nginx` | Container image repository. |
| `image.pullPolicy` | string | `IfNotPresent` | Image pull policy. |
| `image.tag` | string | `""` | Overrides the image tag. Defaults to `appVersion`. |
| `imagePullSecrets` | list | `[]` | Secrets for pulling images from private repositories. |
| `nameOverride` | string | `""` | Overrides the chart name. |
| `fullnameOverride` | string | `""` | Overrides the full qualified app name. |
| `serviceAccount.create` | bool | `true` | Specifies whether a service account should be created. |
| `serviceAccount.automount` | bool | `true` | Automatically mount a ServiceAccount's API credentials. |
| `serviceAccount.annotations` | object | `{}` | Annotations to add to the service account. |
| `serviceAccount.name` | string | `""` | The name of the service account to use. If not set and `create` is `true`, a name is generated. |
| `podAnnotations` | object | `{}` | Annotations to add to the Pod. |
| `podLabels` | object | `{}` | Labels to add to the Pod. |
| `podSecurityContext` | object | `{}` | Pod security context. |
| `securityContext` | object | `{}` | Container security context. |
| `service.type` | string | `ClusterIP` | Kubernetes Service type (ClusterIP, NodePort, LoadBalancer). |
| `service.port` | int | `80` | Service port. |
| `ingress.enabled` | bool | `false` | Enables Ingress. |
| `ingress.className` | string | `""` | Ingress class name. |
| `ingress.annotations` | object | `{}` | Annotations to add to the Ingress. |
| `ingress.hosts` | list | `[{"host": "chart-example.local", "paths": [{"path": "/", "pathType": "ImplementationSpecific"}]}]` | Ingress hosts and paths. |
| `ingress.tls` | list | `[]` | Ingress TLS configuration. |
| `resources` | object | `{}` | Container resource limits and requests. |
| `livenessProbe` | object | `{"httpGet": {"path": "/", "port": "http"}}` | Liveness probe configuration. |
| `readinessProbe` | object | `{"httpGet": {"path": "/", "port": "http"}}` | Readiness probe configuration. |
| `autoscaling.enabled` | bool | `false` | Enables Horizontal Pod Autoscaler. |
| `autoscaling.minReplicas` | int | `1` | Minimum number of replicas for HPA. |
| `autoscaling.maxReplicas` | int | `100` | Maximum number of replicas for HPA. |
| `autoscaling.targetCPUUtilizationPercentage` | int | `80` | Target CPU utilization for HPA. |
| `autoscaling.targetMemoryUtilizationPercentage` | int | `nil` | Target Memory utilization for HPA. |
| `volumes` | list | `[]` | Additional volumes on the Deployment definition. |
| `volumeMounts` | list | `[]` | Additional volumeMounts on the Deployment definition. |
| `nodeSelector` | object | `{}` | Node selector for pod scheduling. |
| `tolerations` | list | `[]` | Tolerations for pod scheduling. |
| `affinity` | object | `{}` | Affinity for pod scheduling. |
| `env.plainEnv` | object | `{}` | Plain environment variables to inject. |
| `env.secretEnv.enabled` | bool | `false` | Enable secret environment variable injection. |
| `env.secretEnv.name` | string | `""` | Name of the Kubernetes Secret for environment variables. |
| `env.secretEnv.mappings` | object | `{}` | Mappings from environment variable names to secret keys. |
| `monitoring.logs.enabled` | bool | `false` | Enables the `lgtm.achrovisual.io/logs` annotation for OpenTelemetry logging. |

## OpenTelemetry Logging

This chart adds the `lgtm.achrovisual.io/logs` annotation to Pod metadata when `monitoring.logs.enabled` is `true` in `values.yaml`.

```
# values.yaml
monitoring:
  logs:
    enabled: true

```

An OpenTelemetry collector can then use this annotation for automatic log discovery and collection, streamlining integration with your observability stack.