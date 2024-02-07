CREATE TABLE worker (
   id IDENTITY PRIMARY KEY,
   name VARCHAR (1000) NOT NULL,
   birthday DATE CHECK (birthday > '1900-01-01'),
   level VARCHAR CHECK (LEVEL IN('Trainee', 'Junior', 'Middle', 'Senior')) NOT NULL,
   salary INT CHECK (salary > 100 AND salary < 100001)
)

CREATE TABLE client (
   id IDENTITY PRIMARY KEY,
   name VARCHAR (1000) NOT NULL
)

CREATE TABLE project (
   id IDENTITY PRIMARY KEY,
   client_id INT NOT NULL,
   start_date DATE NOT NULL,
   finish_date DATE,
   FOREIGN KEY (client_id) REFERENCES client (id )
)

CREATE TABLE project_worker (
  project_id INT NOT NULL,
  worker_id INT NOT NULL,
  PRIMARY KEY (project_id, worker_id),
  FOREIGN KEY (project_id) REFERENCES PROJECT (id),
  FOREIGN KEY (worker_id) REFERENCES WORKER (id)
)