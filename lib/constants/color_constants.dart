import 'dart:ui';

class AppColors {

  static const colorPrimary = Color(0xFFCF5154);
  static const colorSecondary = Color(0xFF2E2E2E);
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
  static const colorPrimaryLight = const Color(0x22FEA07E);
  static const colorSecondaryTransparent = Color(0x22251707);
  static const colorTransparent = Color(0x00000000);
  static const colorDDD = Color(0xFFeaccff);

  static const colorGradient = Color(0xFFD67D5D);
  static const colorGradient2 = Color(0xFFFEA07E);
  static const colorGradient3 = Color(0xFFFEBCA4);
  static const colorGradient4 = Color(0xFFF5DCDC);

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