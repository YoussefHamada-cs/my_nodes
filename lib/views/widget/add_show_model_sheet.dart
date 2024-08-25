import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/cubits/add_note_cubit/notes_cubit.dart';
import 'package:my_notes/cubits/add_note_cubit/notes_state.dart';
import 'package:my_notes/views/widget/add_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddShowModelBottomSheet extends StatefulWidget {
  const AddShowModelBottomSheet({
    super.key,
  });

  @override
  State<AddShowModelBottomSheet> createState() =>
      _AddShowModelBottomSheetState();
}

class _AddShowModelBottomSheetState extends State<AddShowModelBottomSheet> {
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          builder: (context, state) {
            return ModalProgressHUD(inAsyncCall: isloading, child:const SingleChildScrollView(child:  AddForm()));
          },
          listener: (context, state) {
            if (state is AddNotesFailure) {
              print('failed ${state.errormassage}');
            }
            if (state is AddNotesSuccess) {
              Navigator.pop(context);
            }
            if (state is AddNotesLoading) {
              isloading = true;
            }
          },
        ));
  }
}
