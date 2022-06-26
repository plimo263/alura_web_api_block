import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameCubit extends Cubit<String> {
  NameCubit(String state) : super(state);

  void changeName(String value) => emit(value);
}

//
class NameContainer extends StatelessWidget {
  const NameContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NameCubit('Marcos'),
      child: NameView(),
    );
  }
}

class NameView extends StatelessWidget {
  final TextEditingController _textNameController = TextEditingController();

  NameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              style: const TextStyle(
                fontSize: 24,
              ),
              controller: _textNameController,
              decoration: const InputDecoration(
                labelText: 'Desired Name',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  final String name = _textNameController.text;
                  context.read<NameCubit>().changeName(name);
                  Navigator.pop(context);
                },
                child: const Text('ALTERAR'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
