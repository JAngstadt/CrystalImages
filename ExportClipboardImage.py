from PIL import ImageGrab
import os

output_path = "Z:\JAngstadt\Images\CrystalImages\OTDTable.png"

# Try to grab the image from clipboard
image = ImageGrab.grabclipboard()

if image:
    image.save(output_path, "PNG")
    print(f"Image saved to {output_path}")
else:
    print("No image found in clipboard.")
