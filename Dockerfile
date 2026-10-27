# syntax=docker/dockerfile:1

# Build wheels separately so compilers and build tools do not enter the runtime image.
FROM python:3.14-slim AS builder

ENV PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_NO_CACHE_DIR=1
WORKDIR /build

COPY pyproject.toml README.md ./
COPY src ./src
RUN python -m pip wheel --wheel-dir /wheels "."

FROM python:3.14-slim AS runtime

LABEL org.opencontainers.image.title="Denmark project" \
      org.opencontainers.image.version="v0.1.0" \
      org.opencontainers.image.description="Short description of our project" \
      org.opencontainers.image.source="https://github.com/thatmariia/project_denmark" \
      org.opencontainers.image.documentation="https://thatmariia.github.io/project_denmark/"
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

WORKDIR /app

RUN adduser --disabled-password --gecos "" --uid 10001 appuser
COPY --from=builder /wheels /wheels
RUN python -m pip install --no-cache-dir /wheels/*.whl && rm -rf /wheels

USER appuser
CMD ["python", "-m", "project_denmark"]
