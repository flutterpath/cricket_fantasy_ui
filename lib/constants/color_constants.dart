import 'dart:ui';

class AppColors {

  static const colorPrimary = Color(0xFFF78B6B);
  static const colorSecondary = Color(0xFFFFFFFF);
  static const colorWhite = Color(0xFFFFFFFF);
  static const colorGrey = Color(0xFF9E9E9E);
  static const colorGreyDark = Color(0xFF4A4A49);
  static const colorGreyLight = Color(0xFFAEAEAE);
  static const colorGreyExtraLight = Color(0xffE8E8E8);
  static const colorGreenLight = Color(0xFF9EBB54);
  static const colorRedDark = Color(0xFFB90000);

}

// rgb to hex
class HexColor extends Color {

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}