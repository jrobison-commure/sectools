import os
from PIL import Image

# Path to the image
img_path = '/Users/jrobison/projects/sectools/dalle.png'

# Get the image size
img_size = os.path.getsize(img_path)

# Check if the image size is greater than 1MB
if img_size > 1000000:
    # Open the image
    img = Image.open(img_path)

    # Resize the image
    img.thumbnail((500, 500))

    # Save the resized image
    img.save('/Users/jrobison/projects/sectools/dalle-git2.png')
