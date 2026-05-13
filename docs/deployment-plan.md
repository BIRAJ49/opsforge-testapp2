# Deployment Plan

Environment: dev
Target namespace: opsforge-system
Strategy: Start with Docker Compose, then add Kubernetes and GitOps once the runtime is confirmed

1. Review generated files.
2. Configure secrets.
3. Build and push GHCR images.
4. Apply GitOps manifests.
5. Validate probes, logs, and security scan results.
