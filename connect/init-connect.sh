#!/bin/bash
# init-connect.sh

echo "Adding PostgreSQL connector..."
response=$(curl -s -X POST -H "Content-Type: application/json" --data @/usr/local/share/postgres-connector.json http://localhost:8083/connectors)
echo "Response: $response"
