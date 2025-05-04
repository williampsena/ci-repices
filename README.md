# Introduction

This repository contains practical examples and best practices for Continuous Integration (CI) workflows.

## Trivy - Container Security Scanning

Trivy is a comprehensive and easy-to-use vulnerability scanner for container images. Below are the steps to build and scan a container image using Trivy.

### Testing with Trivy

```shell
docker build -f Containerfile -t test-nginx .
trivy --config trivy/trivy.yaml image test-nginx

# with fs
trivy --config trivy/trivy.yaml fs .
```

### Scan Results

During the scan, you might encounter vulnerabilities categorized as critical or high. Examples include:

- **openssl**: CVE-2024-12797
- **libx11-data**: CVE-2021-31535
- **libwebp6**: CVE-2018-25009

> **Note:** It is recommended to address these vulnerabilities by updating the affected packages or using a base image with fewer vulnerabilities.