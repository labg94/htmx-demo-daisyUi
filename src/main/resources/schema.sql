CREATE TABLE todo
(
    id         BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    title      VARCHAR(255),
    completed  BOOLEAN                                 NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE,
    CONSTRAINT pk_todo PRIMARY KEY (id)
);