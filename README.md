This repository is a hands-on Docker project designed to help you learn how to containerize and deploy a complete three-tier application 

The project includes a frontend, a backend API, and a PostgreSQL database, all running as isolated containers that communicate over a user-defined Docker network.

---

## Tech Stack
### Frontend
- Node.js (HTML/CSS/JS based UI)
### Backend
- Node.js REST API
### Database
- PostgreSQL
---
## Goal of the Project
The goal is to containerize and run a three-tier application end-to-end using Docker Compose, similar to how real-world applications are deployed in development environments.
You will create:
- Dockerfiles for the frontend and backend
- A `docker-compose.yml` file to run the full stack
---
## Learning Objectives
By completing this project, you will learn how to:
- Write Dockerfiles for frontend and backend services
- Build Docker images locally
- Use Docker Compose to define and run multi-container applications
- Create a user-defined network for service-to-service communication
- Configure environment variables for database connectivity
- Add persistent storage using a named Docker volume
- Validate end-to-end connectivity across frontend, backend, and database
---
## What You Need to Build
### 1) Dockerfiles
You are expected to create:
- `frontend/Dockerfile`
- `backend/Dockerfile`
### 2) Docker Compose Stack
You are expected to create:
- `docker-compose.yml`
Your Compose file should include:
- A frontend service
- A backend service
- A PostgreSQL database service
- A named volume for database persistence
- A user-defined network
- Environment variables for DB configuration and ports
---
## Success Criteria
Your work is complete when:
- All containers are running and healthy
- Frontend is accessible in the browser
- Backend API responds successfully
- Data persists after restarting containers (database volume works)
---
## Deliverables
Make sure your final submission contains:
- `frontend/Dockerfile`
- `backend/Dockerfile`
- `docker-compose.yml`
- Notes or screenshots showing:
  - Running containers
  - Frontend working in browser
  - Backend API response
  - Proof of persistent data
---
## Who This Project Is For
This project is perfect for:
- DevOps beginners learning Docker and Docker Compose
- Cloud engineers practicing containerized application workflows
- Students preparing for real-world DevOps projects


---
## License
This project is intended for educational use.