import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class PasswordField extends StatefulWidget {
  final String? hintText;
  const PasswordField({Key? key, this.controller, this.hintText})
      : super(key: key);
  final TextEditingController? controller;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isSecure = true;
  final _obscureText = '*';

  @override
  void dispose() {
    super.dispose();
  }

  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.70,
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.visiblePassword,
        obscureText: _isSecure,
        obscuringCharacter: _obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorName.white,
          suffixIcon: _visiblityIcon(),
          hintText: widget.hintText,
          prefixIcon: const Icon(Icons.lock_outlined),
          prefixIconColor: ColorName.orange,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorName.grey)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: ColorName.orange),
          ),
          contentPadding: const EdgeInsets.only(top: 20),
        ),
      ),
    );
  }

  IconButton _visiblityIcon() {
    return IconButton(
      onPressed: () {
        _changeLoading();
      },
      icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off),
      color: ColorName.orange,
    );
  }
}
