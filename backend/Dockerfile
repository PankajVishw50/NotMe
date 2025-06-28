FROM python:3.12-bullseye AS base

ENV PYTHONUNBUFFERED=1
ENV POETRY_VIRTUALENVS_CREATE=false \
  POETRY_HOME="/poetry"
ENV PATH="/poetry/bin:$PATH" 

WORKDIR /noteme-backend

RUN apt-get update && \
  apt-get install -y curl make
RUN curl -sSL https://install.python-poetry.org | python3 -


COPY ./pyproject.toml ./poetry.lock ./ 

EXPOSE 7900

FROM base AS dev

RUN poetry sync --all-groups

COPY . .

CMD ["make", "runserver"]
