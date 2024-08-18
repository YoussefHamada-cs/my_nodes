import 'package:flutter/material.dart';
import 'package:my_notes/views/widget/add_form.dart';

class AddShowModelBottomSheet extends StatelessWidget {
  const AddShowModelBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(12.0),
      child: AddForm(),
    );
  }
}

