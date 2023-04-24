import 'package:flutter/material.dart';

class AddMedic extends StatefulWidget {
  const AddMedic({super.key});

  @override
  State<AddMedic> createState() => _AddMedicState();
}

class _AddMedicState extends State<AddMedic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(hintText: 'Input name'),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Save'))
          ],
        ),
      ),
    );
  }
}
