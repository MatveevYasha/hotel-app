import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../theme/color_scheme.dart';
import '../../theme/text_theme.dart';

class CustomTextFieldWidget extends StatefulWidget {
  // С этим параметром нужно быть осторожнее, так как от него зависит логика валидации
  final TextInputType? keyboardType;
  final String labelText;

  const CustomTextFieldWidget({
    super.key,
    required this.labelText,
    this.keyboardType,
  });

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  MaskTextInputFormatter maskNumberFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  FocusNode focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  bool _isValid = true;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          setState(() {
            _isValid = false;
          });

          return '';
        }

        if (widget.keyboardType == TextInputType.phone) {
          if (value.length != 18 || value.contains(RegExp(r'[*]'))) {
            setState(() {
              _isValid = false;
            });
            return '';
          }
        }

        if (widget.keyboardType == TextInputType.emailAddress) {
          if (!value.contains(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
            setState(() {
              _isValid = false;
            });
            return '';
          }
        }

        setState(() {
          _isValid = true;
        });
        return null;
      },
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
      inputFormatters: (widget.keyboardType == TextInputType.phone) ? [maskNumberFormatter] : null,
      decoration: InputDecoration(
        labelStyle: textTheme.bodySmall?.copyWith(
          color: colorScheme.secondary,
          fontSize: focusNode.hasFocus ? 12 : 17,
        ),
        labelText: widget.labelText,
        errorStyle: const TextStyle(color: Colors.transparent, fontSize: 0, height: 0),
        filled: true,
        fillColor: _isValid ? colorScheme.background : colorScheme.error.withOpacity(0.15),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: colorScheme.background,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: colorScheme.background,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: colorScheme.error.withOpacity(0.15),
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: colorScheme.error.withOpacity(0.15),
          ),
        ),
      ),
    );
  }
}
