/*
When working with color values it can sometimes be useful to extract the individual red, green, and blue (RGB) component values for a color. Implement a function that meets these requirements:

Accepts a case-insensitive hexadecimal color string as its parameter (ex. "#FF9933" or "#ff9933")
Returns a Map<String, int> with the structure {r: 255, g: 153, b: 51} where r, g, and b range from 0 through 255
Note: your implementation does not need to support the shorthand form of hexadecimal notation (ie "#FFF")

Example
"#FF9933" --> {r: 255, g: 153, b: 51}

 */


void main() {
  hexToRGB("#FF9933");
}


Map<String, int> hexToRGB(String color) {
  color = color.substring(1).toUpperCase();
  final r = int.parse(color.substring(0, 2), radix: 16);
  final g = int.parse(color.substring(2, 4), radix: 16);
  final b = int.parse(color.substring(4, 6), radix: 16);
  return {'r': r, 'g': g, 'b': b};
} 