# Bash Image to WebP Converter

A powerful Bash script that automatically finds and converts all your images to WebP format. Just drop it in any directory and run - it will automatically find and convert every image in that directory and all its subdirectories. Perfect for bulk converting images across entire projects, websites, or even your entire system.

## Why Use This?

- **Dead Simple**: Drop the script anywhere and run it - that's it!
- **Recursive Power**: Automatically finds and converts ALL images in ALL subdirectories
- **Set and Forget**: Run it in your root directory to convert every image on your machine
- **Non-Destructive**: Creates WebP copies while preserving your original images
- **Smart Processing**: Handles multiple image formats (JPG, PNG, GIF, TIFF, BMP)

## Quick Start

1. Download `bash-image-to-webp.sh`
2. Make it executable:
   ```bash
   chmod +x bash-image-to-webp.sh
   ```
3. Place it anywhere and run:
   ```bash
   ./bash-image-to-webp.sh
   ```

That's it! The script will:
- Recursively search all subdirectories
- Find all supported image files
- Convert each to WebP format
- Keep your original files intact
- Place each WebP next to its original

Want to convert ALL images on your machine? Just run it from your root directory!

## How It Works

The script uses recursive directory scanning to:
1. Find all JPG, JPEG, PNG, TIFF, BMP, and GIF files in the current directory and ALL subdirectories
2. Convert each image to WebP using Google's cwebp tool
3. Save the WebP version in the same location as the original
4. Track and display progress as it works

No need to manually organize files or specify directories - it handles everything automatically!

## Prerequisites

- Bash shell environment
- WebP conversion tools (`cwebp` command-line tool)

## Advanced Usage

While the default settings work great, you can customize the conversion:

```bash
./bash-image-to-webp.sh -q 80 -m 4
```

Common parameters:
- `-q <value>`: Quality factor (0-100)
- `-m <value>`: Compression method (0-6)
- `-mt`: Enable multi-threading
- `-af`: Enable auto-filter

## Example Directory Structure

Before:
```
root_directory/
├── project1/
│   ├── images/
│   │   ├── photo.jpg
│   │   └── icon.png
│   └── assets/
│       └── banner.gif
└── project2/
    └── images/
        └── logo.png
```

After:
```
root_directory/
├── project1/
│   ├── images/
│   │   ├── photo.jpg
│   │   ├── photo.webp
│   │   ├── icon.png
│   │   └── icon.webp
│   └── assets/
│       ├── banner.gif
│       └── banner.webp
└── project2/
    └── images/
        ├── logo.png
        └── logo.webp
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the MIT License.

## Acknowledgments

- Uses the WebP conversion tools from Google
- Inspired by the need for efficient web image optimization