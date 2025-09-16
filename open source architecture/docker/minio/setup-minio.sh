mc alias set miniocli http://minio:9000 $MINIO_ROOT_USER $MINIO_ROOT_PASSWORD

# Wait a moment for the alias to be set
sleep 1

# Create bucket
echo "Creating bucket: $MINIO_BUCKET_NAME"
mc mb miniocli/$MINIO_BUCKET_NAME || true

echo "Setup completed successfully!"