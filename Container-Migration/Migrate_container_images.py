import os
import requests

# Get the list of images from the file
with open('image_list.txt', 'r') as f:
    images = f.readlines()

# Iterate through the list of images
for image in images:
    # Get the image from the source
    response = requests.get(image)
    # Save the image to a local file
    with open('image.tar', 'wb') as f:
        f.write(response.content)
    # Push the image to GCR
    os.system('gcloud container images add-tag image.tar gcr.io/[PROJECT_ID]/[IMAGE_NAME]')
    # Delete the local file
    os.remove('image.tar')