from PIL import Image
import numpy as np

try:
    img = Image.open('assets/logos/alt/223x153/223 x 153.jpg')
    pixels = np.array(img)
    # Check top-left corner for background color
    bg_color = pixels[0, 0]
    print(f"Background color (RGB): {bg_color}")
    
    # Check a few more pixels around the edges to confirm
    top_right = pixels[0, -1]
    bottom_left = pixels[-1, 0]
    bottom_right = pixels[-1, -1]
    
    print(f"Top-right corner: {top_right}")
    print(f"Bottom-left corner: {bottom_left}")
    print(f"Bottom-right corner: {bottom_right}")
    
    # Convert RGB to hex
    if len(bg_color) >= 3:
        hex_color = '#{:02x}{:02x}{:02x}'.format(bg_color[0], bg_color[1], bg_color[2])
        print(f"Hex color code: {hex_color}")
except Exception as e:
    print(f"Error: {e}")
