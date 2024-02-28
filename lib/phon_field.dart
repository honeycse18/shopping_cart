// used for pick country code
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class PhoneNumberTextFormFieldWidget extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isPasswordTextField;
  final bool hasShadow;
  final bool isReadOnly;
  final BoxConstraints prefixIconConstraints;
  final TextInputType? textInputType;
  final BoxConstraints suffixIconConstraints;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final int? minLines;
  final int maxLines;
  final void Function()? onTap;
  const PhoneNumberTextFormFieldWidget({
    Key? key,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.hintText,
    this.isPasswordTextField = false,
    this.hasShadow = false,
    this.prefixIconConstraints =
        const BoxConstraints(maxHeight: 48, maxWidth: 48),
    this.suffixIconConstraints =
        const BoxConstraints(maxHeight: 48, maxWidth: 48),
    this.isReadOnly = false,
    this.textInputType,
    this.controller,
    this.focusNode,
    this.minLines,
    this.maxLines = 1,
    this.onTap,
  }) : super(key: key);

  /// TextField widget
  Widget textFormFieldWidget() {
    return SizedBox(
      // height: (maxLines > 1 || (minLines ?? 1) > 1) ? null : 62,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        onTap: onTap,
        readOnly: isReadOnly,
        obscureText: isPasswordTextField,
        keyboardType: textInputType,
        validator: validator,
        minLines: minLines,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
          prefix: SizedBox(
            width: 24,
          ),
          prefixIconConstraints: prefixIconConstraints,
          prefixIcon: prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: prefixIcon,
                )
              : null,
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
          suffixIconConstraints: suffixIconConstraints,
          suffix: SizedBox(
            width: 10,
          ),
          suffixIcon: suffixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: suffixIcon,
                )
              : null,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // If label text is not null, then show label as a separate Text widget
    // wrapped inside column widget.
    // Else, just return the TextFormField widget.
    if (labelText != null) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label text
          Text(labelText!,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          SizedBox(
            width: 8,
          ),
          // Text field
          hasShadow
              ? PhysicalModel(
                  color: Color.fromARGB(0, 236, 66, 66),
                  elevation: 10,
                  shadowColor: Colors.black.withOpacity(0.25),
                  child: textFormFieldWidget(),
                )
              : textFormFieldWidget(),
        ],
      );
    } else {
      // Text field
      return hasShadow
          ? PhysicalModel(
              color: const Color.fromARGB(0, 248, 45, 45),
              elevation: 10,
              shadowColor: Colors.black.withOpacity(0.25),
              child: textFormFieldWidget())
          : textFormFieldWidget();
    }
  }
}
