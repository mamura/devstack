# Devstack App + API
![Docker](https://img.shields.io/badge/docker-ready-blue)
![Status](https://img.shields.io/badge/status-active-success)
![License](https://img.shields.io/badge/license-GPL--3.0-green)

A modern, reusable devstack to bootstrap fullstack projects (App + API) with Docker, Traefik, and zero setup friction.

---

## Demo

See how easy it is to start the entire stack:

![Demo](./demo.gif)

---

## Overview
This project provides a standardized development environment for modern fullstack applications.

Instead of reinventing the setup for every project, this devstack gives you a **ready-to-use foundation** focused on:

* Fast onboarding
* Consistent environments
* Reusability across projects
* Better developer experience

---

## Quick Start
```bash
git clone https://github.com/mamura/devstack.git
cd devstack

make init
```

Then access:
* [http://app.localhost](http://app.localhost)
* [http://api.localhost](http://api.localhost)

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
* Makefile (command orchestration)
* Bootstrap script (environment setup)

---

## Available Commands

```bash
make init       # Full setup (setup + bootstrap + up)
make setup      # Create .env from example
make bootstrap  # Prepare environment (network)
make up         # Start containers
make down       # Stop containers
make logs       # View logs
make restart    # Restart stack
make ps         # List containers
```

---

## Why this devstack?
Because setting up environments shouldn't slow you down.

This project helps you:

* Avoid port conflicts
* Standardize project setup
* Reduce onboarding friction
* Focus on building features instead of configuring infrastructure

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

GPL-3.0

---

## Support

If this project helped you, consider giving it a star ⭐
