FROM python:3.9-slim

# Install git and pre-commit
RUN apt-get update && apt-get install -y git && pip install --no-cache-dir pre-commit

# Set the working directory
WORKDIR /github/workspace

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Ensure the entrypoint script has execution permissions
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
