# Docker Wrapper Commands

A set of wrapper scripts for Docker to simplify frequent operations and enable advanced features like exporting and importing Docker images and containers, similar to ISO/OVA files used in virtual machines.

---

## Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/neoviki/docker.wrapper.commands.git
   cd docker.wrapper.commands
   ```
2. Make the installer executable:

   ```bash
   chmod +x install.sh
   ```
3. Run the installer:

   ```bash
   ./install.sh
   ```

---

## Dockerfile

This file defines instructions to build a custom Ubuntu 16.04 Docker image. It behaves like a minimal, portable Ubuntu ISO.

---

## Wrapper Commands

### `dkr.build` – Build Docker Image (like an ISO)

Builds a Docker image from a specified Dockerfile.

**Syntax:**

```bash
dkr.build <dockerfile> <image.name.diso>
```

**Example:**

```bash
dkr.build Dockerfile ubuntu.image.diso
```

> `.diso` = Docker ISO (custom image format)

---

### `dkr.container.create` – Create Docker Container

Creates a container from a `.diso` image (acts like a virtual machine).

**Syntax:**

```bash
dkr.container.create <image.diso> <container.name>
```

**Example:**

```bash
dkr.container.create ubuntu.image.diso ubuntu.machine1
dkr.container.create ubuntu.image.diso ubuntu.machine2
```

---

### `dkr.container.start` – Start Container

Starts a Docker container (like booting a VM).

**Syntax:**

```bash
dkr.container.start <container.name>
```

**Example:**

```bash
dkr.container.start ubuntu.machine1
```

---

### `dkr.container.stop` – Stop Container

Stops a Docker container (like shutting down a VM).

**Syntax:**

```bash
dkr.container.stop <container.name>
```

**Example:**

```bash
dkr.container.stop ubuntu.machine1
```

---

### `dkr.container.export` – Export Container

Exports a Docker container to a `.dova` file (similar to exporting a VM to an OVA).

**Syntax:**

```bash
dkr.container.export <container.name> <output.dova>
```

**Example:**

```bash
dkr.container.export ubuntu.container ubuntu.dova
```

> `.dova` = Docker OVA (container appliance format)

---

### `dkr.container.import` – Import Container

Imports a `.dova` file to recreate a Docker container.

**Syntax:**

```bash
dkr.container.import <file.dova> <container.name>
```

**Example:**

```bash
dkr.container.import ubuntu.dova ubuntu.container
```

> After import, use `dkr.container.start` to run the container.

---

### `dkr.factory.reset` – Factory Reset

Removes all Docker containers, images, and volumes.

**Syntax:**

```bash
dkr.factory.reset
```

---

### `dkr.delete.all.containers` – Delete All Containers

Deletes all Docker containers, including running ones.

**Syntax:**

```bash
dkr.delete.all.containers
```

---

### `dkr.delete.all.images` – Delete All Images

Deletes all Docker images.

**Syntax:**

```bash
dkr.delete.all.images
```

