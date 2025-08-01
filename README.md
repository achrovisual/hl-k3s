# hl-k3s

![CodeRabbit Pull Request Reviews](https://img.shields.io/coderabbit/prs/github/achrovisual/hl-k3s?utm_source=oss&utm_medium=github&utm_campaign=achrovisual%2Fhl-k3s&labelColor=171717&color=FF570A&link=https%3A%2F%2Fcoderabbit.ai&label=CodeRabbit+Reviews)

[![K3s](https://img.shields.io/badge/K3s-FF0000?style=for-the-badge&logo=kubernetes&logoColor=white)](https://k3s.io/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)](https://kubernetes.io/)
[![Helm](https://img.shields.io/badge/Helm-0F1689?style=for-the-badge&logo=helm&logoColor=white)](https://helm.sh/)
[![Argo CD](https://img.shields.io/badge/Argo_CD-EE4C2C?style=for-the-badge&logo=argocd&logoColor=white)](https://argoproj.github.io/cd/)
[![YAML](https://img.shields.io/badge/YAML-CB171E?style=for-the-badge&logo=yaml&logoColor=white)](https://yaml.org/)
[![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)](https://docs.github.com/en/actions)

## 🚀 Overview

This repository is a curated collection of **Helm charts** for deploying and managing applications and services on a **K3s cluster**. While perfect for **home lab environments**, its core purpose is to serve as a playground for **exploring Kubernetes concepts** and for **personal development**. These charts streamline provisioning, offering a consistent and reproducible way to experiment with various applications, from common services to custom builds, and integrate them with GitOps tools like Argo CD.

---

## ✨ Features

-   **Modular Helm Charts:** Enjoy organized and reusable charts for diverse applications and services.
-   **Consistent Deployments:** Achieve standardized and repeatable deployments across your K3s cluster.
-   **Simplified Application Management:** Use Helm to easily manage the lifecycle of your applications, including installation, upgrades, and rollbacks.
-   **GitOps Ready:** Designed to work seamlessly with GitOps tools like **Argo CD** for automated deployments and synchronization, making your infrastructure declarative.
-   **Home Lab & Development Focus:** Tailored for both typical home lab use cases and as a flexible environment for learning and personal projects.
-   **Version Controlled Configurations:** All application configurations are stored as code within the charts, allowing for easy tracking, auditing, and experimentation.

---

## 🛠️ Technologies Used

-   **Kubernetes Distribution:** [K3s](https://k3s.io/) (Lightweight Kubernetes, ideal for development)
-   **Package Manager:** [Helm](https://helm.sh/) (for managing Kubernetes applications with ease)
-   **GitOps:** [Argo CD](https://argoproj.github.io/cd/) (for continuous delivery, declarative deployments, and state synchronization)
-   **Configuration Language:** [YAML](https://yaml.org/) (the standard for Kubernetes configurations)
-   **Version Control:** [Git](https://git-scm.com/) / [GitHub](https://github.com/)
-   **CI/CD:** [GitHub Actions](https://docs.github.com/en/actions) (for automated chart linting, testing, and deployment pipelines if implemented)

---

## ⚙️ Getting Started

This section outlines the steps to set up your K3s environment and deploy applications using the charts in this repository.

### Prerequisites

Before you begin, ensure you have:

-   A machine ready to host K3s (e.g., a Linux VM or Raspberry Pi).
-   Basic Linux command-line knowledge.
-   `sudo` access on the machine for installation steps.

### Automated Setup

For a quick and automated setup of your K3s server, along with Kubeconfig setup, Helm installation, adding Helm repositories, cloning this Git repository, and installing Argo CD with initial applications, use the `setup.sh` script located in the `hl-scripts` repository.

**Note:** This script is designed for a fresh K3s master node and assumes a specified user.

1.  **Clone the `hl-scripts` repository:**
    ```bash
    $ git clone [https://github.com/achrovisual/hl-scripts.git](https://github.com/achrovisual/hl-scripts.git)
    ```

2.  **Navigate to the script directory:**
    ```bash
    $ cd hl-scripts/k3s/server/
    ```

3.  **Run the setup script:**
    ```bash
    $ ./setup.sh <your_username>
    ```
    Replace `<your_username>` with an existing user on your K3s master node (e.g., `alice`). This script will guide you through the automated setup process.

---

### Using the Helm Charts (After Setup)

Once your environment is set up by the automated script (which includes Helm and Argo CD installations), you can proceed to use the Helm charts for your deployments.

---

## 🚀 Deployment

These Helm charts are designed to facilitate the deployment of various applications and services into your K3s cluster. By maintaining these charts in a version-controlled repository, especially when coupled with GitOps tools like Argo CD, you can achieve consistent, automated, and auditable deployments for your home lab infrastructure and personal development sandbox. This approach embodies the GitOps philosophy, where your Git repository is the single source of truth for your cluster's desired state.
