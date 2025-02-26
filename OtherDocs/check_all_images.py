from PIL import Image
import numpy as np
import os

image_files = [
    'assets/logos/alt/223x153/223 x 153.jpg',
    'assets/logos/alt/223x153/223 x 154.jpg',
    'assets/logos/alt/223x153/223 x 155.jpg',
    'assets/logos/alt/223x153/223 x 156.jpg'
]

for img_path in image_files:
    try:
        print(f"\nAnalyzing {img_path}:")
        img = Image.open(img_path)
        pixels = np.array(img)
        
        # Check top-left corner for background color
        bg_color = pixels[0, 0]
        print(f"Background color (RGB): {bg_color}")
        
        # Convert RGB to hex
        if len(bg_color) >= 3:
            hex_color = '#{:02x}{:02x}{:02x}'.format(bg_color[0], bg_color[1], bg_color[2])
            print(f"Hex color code: {hex_color}")
            
        # Get image dimensions
        width, height = img.size
        print(f"Image dimensions: {width}x{height}")
    except Exception as e:
        print(f"Error with {img_path}: {e}")
