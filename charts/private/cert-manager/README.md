# cert-manager

This guide provides a quick reference for manually deploying the `ClusterIssuer` and `Ingress` resources.

## Prerequisites

Before you begin, ensure you have the following:

* **cert-manager** installed in your cluster.

* An **Ingress Controller** (e.g., NGINX Ingress Controller) installed and configured.

* **DNS records** for your domain (`your.domain.com`). The required records depend on the ACME challenge type you use:
  * For **HTTP-01** challenges, you need **A** or **AAAA** records pointing to your Ingress Controller's IP address.
  * For **DNS-01** challenges, no public **A** or **AAAA** records are required. You will need a Kubernetes secret containing a Cloudflare API token.

* A **Cloudflare API-token secret** with the necessary RBAC permissions for DNS-01 challenges. This secret must contain a token with **Zone > DNS > Edit** and **Zone > Zone > Read** permissions.

* Your `clusterissuer.yaml` and `ingress.yaml` files are ready.

## Step 1: Apply the ClusterIssuer

Use the following command to create your `ClusterIssuer` resource, which will register an account with Let's Encrypt.

```bash
$ kubectl apply -f clusterissuer.yaml
```

**Verification:**
To check if the `ClusterIssuer` is ready, run this command. The `READY` status should eventually show `True`.

```bash
$ kubectl get clusterissuer lets-encrypt-prod -o wide
```

## Step 2: Apply the Ingress Resource

Once the `ClusterIssuer` is ready, apply your `Ingress` resource. cert-manager will automatically detect the annotation and begin the process of issuing a TLS certificate for your domain.

```bash
$ kubectl apply -f ingress.yaml
```

**Verification:**
Check the status of the automatically created `Certificate` and the resulting `Secret` with these commands. The `READY` status should become `True` once the certificate is issued.

## Check the status of the Certificate Resource

```bash
$ kubectl get certificate -n your-app-namespace
```

## Check the status of the TLS Secret

```bash
$ kubectl get secret your-app-tls-secret -n your-app-namespace
```