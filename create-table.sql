CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE documents (
    id text PRIMARY KEY,
    content text NOT NULL,
    metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
    embedding vector(4096) NOT NULL,
    created_at timestamp with time zone NOT NULL DEFAULT now()
);
