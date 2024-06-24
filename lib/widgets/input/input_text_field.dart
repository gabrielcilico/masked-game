import 'package:flutter/material.dart';
import 'package:masked_game/design/theme/palette.dart';
import 'package:masked_game/design/theme/text_styles.dart';

class DefaultInputTextField extends StatefulWidget {
  final String labelText;
  final String? hintText;
  final String currentValue;
  final IconData? prefixIcon;
  final Function(String) onChanged;
  final bool canClear;

  const DefaultInputTextField({
    super.key,
    required this.labelText,
    this.hintText,
    required this.onChanged,
    this.prefixIcon,
    this.canClear = false,
    required this.currentValue,
  });

  @override
  State<DefaultInputTextField> createState() => DefaultInputTextFieldState();
}

class DefaultInputTextFieldState extends State<DefaultInputTextField> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.text = widget.currentValue;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Palette.primary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Palette.black.withOpacity(0.2),
            blurRadius: 3,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      width: 200,
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 4,
        ),
        decoration: BoxDecoration(
          color: Palette.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          controller: _controller,
          onChanged: widget.onChanged,
          cursorColor: Palette.primary,
          decoration: InputDecoration(
            labelStyle: GloriaHallelujah().textXS.regular.copyWith(
                  color: Palette.primary,
                ),
            labelText: widget.labelText,
            hintText: widget.hintText ?? '',
            prefixIcon:
                widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
            // suffixIcon: widget.canClear
            //     ? IconButton(
            //         onPressed: () {
            //           _controller.clear();
            //           widget.onChanged('');
            //         },
            //         splashRadius: 1,
            //         icon: const Icon(
            //           Icons.clear,
            //           color: Palette.primary,
            //         ),
            //       )
            //     : null,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
