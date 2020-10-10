import 'dart:ui';

class AppColors {

  static const colorPrimary = Color(0xFFFF6D00);
  static const colorSecondary = Color(0xFF424242);
  static const colorAccent = Color(0xFFFFFFFF);
  static const colorWhite = Color(0xFFFFFFFF);
  static const colorBlack = Color(0xFF000000);
  static const colorGrey = Color(0xFF9E9E9E);
  static const colorGreyDark = Color(0xFF4A4A49);
  static const colorGreyLight = Color(0xFFAEAEAE);
  static const colorGreyExtraLight = Color(0xffE8E8E8);
  static const colorGreenLight = Color(0xFF9EBB54);
  static const colorGreen = Color(0xFF00AF00);
  static const colorRedDark = Color(0xFFB90000);
  static const colorPrimaryLight = const Color(0x33FF6D00);
  static const colorSecondaryTransparent = Color(0x22251707);
  static const colorTransparent = Color(0x00000000);
  static const colorDDD = Color(0xFFeaccff);

  static const colorGradient = Color(0xFFBF6900);

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