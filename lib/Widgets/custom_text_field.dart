import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? icon;
  final bool showIcon;
  final VoidCallback? onTapIcon;
  const CustomTextField._internal({
    required this.controller,
    required this.hintText,
    this.icon,
    required this.showIcon,
    this.onTapIcon,
  });

  factory CustomTextField({
    required TextEditingController controller,
    required String hintText,
    String? icon,
    bool showIcon = false,
    VoidCallback? onTapIcon,
  }) {
    if (showIcon && icon == null) {
      throw ArgumentError('Icon must be provided if showIcon is true.');
    } else if (!showIcon && icon != null) {
      throw ArgumentError('Icon must be null if showIcon is false.');
    }
    return CustomTextField._internal(
      controller: controller,
      hintText: hintText,
      icon: icon,
      showIcon: showIcon,
      onTapIcon: onTapIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon:
            showIcon
                ? IconButton(icon: Image.asset(icon!), onPressed: onTapIcon)
                : null,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
      ),
    );
  }
}
