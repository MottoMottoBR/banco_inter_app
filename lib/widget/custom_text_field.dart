import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final EdgeInsetsGeometry? padding;
  final String? hitText;
  final String? labelText;
  final String? helperText;
  //valida o conteudo digitado
  final FormFieldValidator<String>? validator;

  const CustomTextField(
      {super.key,
      this.controller,
      this.padding,
      this.hitText,
      this.labelText,
      this.helperText,
      this.validator});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final defaultBorder =
      OutlineInputBorder(borderRadius: BorderRadius.circular(100.0));

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        decoration: InputDecoration(
          helperMaxLines: 3,
          labelText: widget.labelText,
          hintText: widget.hitText,
          //coloca uma cor na borda e no texto em caso de erro
          errorBorder: defaultBorder.copyWith(
              borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder: defaultBorder,
          focusedBorder: defaultBorder,
          disabledBorder: defaultBorder,
          helperText: widget.helperText,
          enabledBorder: defaultBorder,
        ));
  }
}
