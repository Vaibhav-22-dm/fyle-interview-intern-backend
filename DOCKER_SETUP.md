# Docker Setup

## Instructions

- Install Docker Desktop.

- Clone the repository.

- Open terminal with current directory as the repository directory.

- To build the container, run

    ```
    docker compose up --build
    ```

- To start the container, run

    ```
    docker compose up
    ```

- Application will be available on

    ```
    localhost:5000
    ```

## Test coverage

- To get the container id, run

    ```
    docker ps
    ```

- Copy the conatiner id

- To open bash inside the container, run 

    ```
    docker exec -i -t container_id bash
    ```

- To remove the existing db, run

    ```
    rm core/store.sqlite3
    ```

- To initialize db, run

    ```
    flask db upgrade -d core/migrations/
    ```

- To get the test coverage, run

    ```
    pytest --cov
    ```
