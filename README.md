# M12 Dev Infrastructure

A modular and flexible Docker-based development environment for PHP, Nginx, PostgreSQL, Redis, and future extensions.

## 🚀 Features
- PHP 8.3 FPM
- Nginx 1.25
- PostgreSQL 16
- Redis 7
- Modular structure
- .env-driven project paths
- Makefile shortcuts

## 📁 Project Structure
```
workspace/
  my-app/        <- your Laravel / PHP project
  dev-infra/     <- this repository
```

## 📦 Getting Started
1. Clone the repository:
```
git clone https://github.com/m12-cms/dev-infra
cd dev-infra
```

2. Copy environment file:
```
cp .env.example .env
```

3. Start Docker:
```
make up
```

4. Enter PHP container:
```
make sh-php
```

## 🛠 Commands
| Command | Description |
|--------|-------------|
| make up | Start containers |
| make down | Stop environment |
| make restart | Restart |
| make logs | View logs |
| make ps | Show status |
| make sh-php | Enter PHP container |
| make sh-nginx | Enter Nginx container |
| make sh-postgres | Enter PostgreSQL |
| make sh-redis | Enter Redis |

## 📄 License
Apache License 2.0
