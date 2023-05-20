import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class AuthField extends StatefulWidget {
  final TextEditingController controller;

  final String? hintText;
  final bool obscureText;
  final Icon? prefixIcon;
  final Function()? onChanged;
  const AuthField(
      {Key? key,
      required this.controller,
      this.hintText,
      required this.obscureText,
      this.prefixIcon,
      this.onChanged})
      : super(key: key);

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.70,
      child: TextFormField(
          controller: widget.controller,
          obscureText: widget.obscureText,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: widget.hintText,
              prefixIcon: widget.prefixIcon,
              prefixIconColor: ColorName.orange,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: ColorName.grey)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: ColorName.orange),
              ),
              contentPadding: const EdgeInsets.all(22))),
    );
  }
}
