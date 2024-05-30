FROM python:3.9-slim

# Install dependencies
RUN pip install --no-cache-dir pre-commit

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Ensure the entrypoint script has execution permissions
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
