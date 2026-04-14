# Drain Grid (Grelha para Ralo)

A customizable drain grid designed for 3D printing using OpenSCAD.

## Overview

This project provides a parametric OpenSCAD design for a drain grid with a central hub, an outer ring, and multiple connecting spokes. The design is fully customizable, allowing you to easily adjust dimensions and structure to fit your specific needs.

## Features

- **Customizable Dimensions**: Easily adjust external diameter, internal diameter, central hub diameter, and height
- **Parametric Design**: Modify the number of spokes, spoke thickness, and border thickness
- **3D Print Ready**: Optimized for FDM 3D printing on common printers like the Ender 3
- **High-Quality Rendering**: Configurable quality settings for preview and rendering
- **Creative Commons Licensed**: Free to use, modify, and distribute

## Customization Parameters

All dimensions are defined at the top of `Grelha.scad`:

| Parameter | Default | Description |
|-----------|---------|-------------|
| `DiametroExterno` | 96.5 mm | External diameter of the grid |
| `DiametroInterno` | 92 mm | Internal diameter of the grid |
| `DiametroCentral` | 40 mm | Central hub diameter |
| `Altura` | 8 mm | Height of the grid |
| `EspessuraDaBorda` | 3.5 mm | Border thickness |
| `EspessuraDoAnel` | 3.5 mm | Ring thickness |
| `EspessuraDoRaio` | 2 mm | Spoke thickness |
| `NumeroDeRaios` | 32 | Number of spokes |

## How to Use

1. **Install OpenSCAD**: Download and install from [OpenSCAD.org](https://openscad.org/)
2. **Open the File**: Open `Grelha.scad` in OpenSCAD
3. **Customize**: Modify the parameters at the top of the file to suit your needs
4. **Preview**: Press F5 to preview the model
5. **Render**: Press F6 for final render (higher quality)
6. **Export**: Export as STL for 3D printing: File → Export as STL

## 3D Printing Notes

- **Printer**: Tested on Ender 3 and compatible FDM printers
- **Material**: I tested this model with PET filament and the part became strong enough to support my whole weith on its center.
- **Support**: Do not requere supports if correctly oriented
- **Print Time**: Varies based on size and printer speed
- **Post-Processing**: Just use it. No post-processing required.

## License

This project is licensed under the **Creative Commons CC0 1.0 Universal (CC0 1.0)** license, which means you are free to:
- Use this design for any purpose
- Modify and adapt the design
- Distribute copies freely
- Use the design for commercial purposes

No permission or attribution is required, though it is appreciated!

For more details, visit: [Creative Commons CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/)

## Author

**Carlos Eduardo Foltran**

- GitHub: [Nartlof](https://github.com/Nartlof)
- Project: [DrainGrid](https://github.com/Nartlof/DrainGrid)
- Thingiverse: [Grid for floor sink](https://www.thingiverse.com/thing:7334860)

## Sharing Your Prints

If you print this design, feel free to share your creations! You can upload them to:
- [Thingiverse](https://www.thingiverse.com/)
- [Printables](https://www.printables.com/)
- Your favorite 3D printing community

## Contributing

Improvements, suggestions, and modifications are welcome! Feel free to fork the project and submit your enhancements.

## Support

For issues, questions, or suggestions, please open an issue on the GitHub repository.

---

**Date Created**: April 12, 2026  
**Last Updated**: April 12, 2026
