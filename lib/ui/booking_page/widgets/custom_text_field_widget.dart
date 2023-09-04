import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../theme/text_theme.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final MaskTextInputFormatter mask;
  final TextInputType? keyboardType;
  final String labelText;

  const CustomTextFieldWidget({
    super.key,
    required this.mask,
    required this.labelText,
    this.keyboardType,
  });

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  FocusNode focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      focusNode: focusNode,
      keyboardType: widget.keyboardType,
      onTap: () {
        if (widget.keyboardType == TextInputType.phone) {
          _controller.text = '+7 (***) ***-**-**';
        }
      },
      onChanged: (value) {
        if (widget.keyboardType == TextInputType.phone) {
          _controller.text = switch (_controller.text.length) {
            5 => '$value**) ***-**-**',
            6 => '$value*) ***-**-**',
            7 => '$value) ***-**-**',
            10 => '$value**-**-**',
            11 => '$value*-**-**',
            12 => '$value-**-**',
            14 => '$value*-**',
            15 => '$value-**',
            17 => '$value*',
            18 => value,
            int() => '',
          };
        }
      },
      inputFormatters: [widget.mask],
      decoration: InputDecoration(
        labelStyle: textTheme.bodySmall?.copyWith(
          color: const Color(0xFF828796),
          fontSize: focusNode.hasFocus ? 12 : 17,
        ),
        labelText: widget.labelText,
        filled: true,
        fillColor: const Color(0xFFF6F6F9),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFF6F6F9),
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFF6F6F9),
          ),
        ),
      ),
    );
  }
}
