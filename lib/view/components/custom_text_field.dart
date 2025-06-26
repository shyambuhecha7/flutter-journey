import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {

  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final TextInputType inputType;
  final bool isPassword;

  const CustomTextField(
      {super.key, required this.hint, required this.icon, required this.inputType, this.isPassword = false, required this.controller});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.inputType,
        obscureText: widget.isPassword ? _obscureText : false,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon, color: Colors.black),
          hintText: widget.hint,
          suffixIcon: widget.isPassword ? IconButton(icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.black),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              }) : null,
          border: OutlineInputBorder(
          borderSide: BorderSide(
          color: Colors.black,
        width: 1,
        strokeAlign: BorderSide.strokeAlignOutside,
        ),
        borderRadius: BorderRadius.circular(8),
      ),)
      ,
      ),
    );
  }
}

