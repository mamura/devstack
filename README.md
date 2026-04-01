# Devstack App + API
A modern, reusable devstack to bootstrap fullstack projects (App + API) with Docker, Traefik, and zero setup friction.

---

## Overview

This project provides a standardized development environment for modern fullstack applications.

Instead of reinventing the setup for every project, this devstack gives you a **ready-to-use foundation** focused on:

* Fast onboarding
* Consistent environments
* Reusability across projects
* Better developer experience

---

## Architecture

This devstack is designed for projects with a simple and scalable structure:

```
project/
├── app/   # Frontend
├── api/   # Backend
└── infra/ # Devstack configuration
```

---

## Stack

* Docker & Docker Compose
* Traefik (reverse proxy)
* Makefile for command orchestration
* Bootstrap script for environment setup

---

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/mamura/devstack.git
cd devstack
```

---

### 2. Bootstrap the environment

```bash
make bootstrap
```

This will:

* Ensure the Docker network exists
* Prepare the environment for first run

---

### 3. Start the stack

```bash
make up
```

---

## Access the applications

Once running, access your services via:

* [http://app.localhost](http://app.localhost)
* [http://api.localhost](http://api.localhost)

No ports. No confusion. Just clean URLs.

---

## Available Commands

```bash
make bootstrap   # Prepare environment
make up          # Start containers
make down        # Stop containers
make logs        # View logs
make restart     # Restart stack
```

---

## Why this devstack?

Because setting up environments shouldn't slow you down.

This project helps you:

* Avoid port conflicts
* Standardize project setup
* Reduce onboarding friction
* Focus on building features instead of configuring infra

---

## Roadmap

* [ ] HTTPS local support
* [ ] Database services (MySQL/Postgres)
* [ ] Hot reload improvements
* [ ] CLI for project scaffolding
* [ ] Multi-environment support

---

## Contributing

Contributions are welcome!

Feel free to open issues, suggest improvements, or submit pull requests.

---

## License

GPL-3.0 license

---

## Support

If this project helped you, consider giving it a star ⭐
