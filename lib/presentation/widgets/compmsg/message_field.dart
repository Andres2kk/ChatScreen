// import 'dart:js_interop_unsafe';
import 'package:flutter/material.dart';

class MessageField extends StatelessWidget {
  const MessageField({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names

    final textController = TextEditingController();
    final focusNode = FocusNode();

    // ignore: non_constant_identifier_names
    final OutlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    // ignore: non_constant_identifier_names
    final Decoration = InputDecoration(
      hintText: 'End you message with a"?"',
      enabledBorder: OutlineInputBorder,
      focusedBorder: OutlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          // ignore: avoid_print
          print('button $textValue');
          textController.clear();
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: Decoration,
      onFieldSubmitted: (value) {
        // ignore: avoid_print
        print('Sumbit value $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
