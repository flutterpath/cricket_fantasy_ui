import 'package:fantasy_app/constants/color_constants.dart';
import 'package:flutter/material.dart';

class SimpleTextField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final String errorText;
  final bool isObscure;
  final bool isIcon;
  final Color inputTextColor;
  final TextInputType inputType;
  final TextAlign textAlign;
  final double inputTextSize;
  final TextEditingController textController;
  final EdgeInsets padding;
  final Color hintColor;
  final Color iconColor;
  final FocusNode focusNode;
  final ValueChanged onFieldSubmitted;
  final ValueChanged onChanged;
  final bool autoFocus;
  final TextInputAction inputAction;
  final String Function(String) validator;
  final bool readOnly;
  final int maxLength;
  final String labelText;
  final Widget sufixIcon;
  final Widget prefixIcon;
  final TextDirection textDirection;
  final double hintSize;
  final int maxLines;
  final void Function() onTap;
  final TextCapitalization textCapitalization;

  const SimpleTextField({
    Key key,
    this.icon,
    this.hint,
    this.errorText,
    this.isObscure = false,
    this.inputType,
    this.textController,
    this.isIcon = true,
    this.padding = const EdgeInsets.all(0),
    this.hintColor = Colors.grey,
    this.iconColor = Colors.grey,
    this.focusNode,
    this.onFieldSubmitted,
    this.onChanged,
    this.autoFocus = false,
    this.inputAction,
    this.validator,
    this.labelText,
    this.readOnly,
    this.maxLength,
    this.sufixIcon,
    this.onTap,
    this.prefixIcon,
    this.inputTextColor,
    this.textDirection,
    this.hintSize,
    this.maxLines,
    this.inputTextSize,
    this.textAlign,
    this.textCapitalization
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: textCapitalization,
      controller: textController,
      textDirection: textDirection,
      textAlignVertical: TextAlignVertical.center,
      onTap: onTap,
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      autofocus: autoFocus,
      textInputAction: inputAction,
      obscureText: this.isObscure,
      maxLength: this.maxLength,
      maxLines: maxLines,
      keyboardType: this.inputType,
      validator: validator,
      readOnly: readOnly,
      cursorColor: Colors.black,
      textAlign: textAlign ?? TextAlign.left,
//      cursorHeight: 30,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        color: inputTextColor ?? AppColors.colorSecondary,
        fontSize: inputTextSize,
        fontFamily: 'Raleway'
      ),
      decoration: InputDecoration(
        prefixIcon: this.prefixIcon,
        suffixIcon: this.sufixIcon,
        labelText: labelText,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,

        ),
        contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: this.hint,
        hintStyle:TextStyle(
          fontWeight: FontWeight.w400,
          color: hintColor,
          fontSize: hintSize ?? 16,
            fontFamily: 'Raleway'
        ),
        errorText: errorText,
        errorStyle: Theme.of(context)
            .textTheme
            .bodyText2
            .copyWith(color: Colors.red, fontSize: 12,),
        counterText: '',
        //icon: this.isIcon ? Icon(this.icon, color: iconColor) : null
      ),
    );
  }
}