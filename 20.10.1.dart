void main() {
  rgb(255, 255, 255);
}


String rgb(int r, int g, int b) {
  // Clamp values to range [0, 255]
  r = r.clamp(0, 255);
  g = g.clamp(0, 255);
  b = b.clamp(0, 255);

  // Convert values to hexadecimal string and pad with leading zeros if necessary
  String rHex = r.toRadixString(16).padLeft(2, '0');
  String gHex = g.toRadixString(16).padLeft(2, '0');
  String bHex = b.toRadixString(16).padLeft(2, '0');
  return "${rHex + gHex + bHex}".toUpperCase();
}