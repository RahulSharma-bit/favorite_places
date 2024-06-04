import 'package:flutter/material.dart';

class AddNewPlaces extends StatefulWidget {
  const AddNewPlaces({super.key});

  @override
  State<AddNewPlaces> createState() => _AddNewPlacesState();
}

class _AddNewPlacesState extends State<AddNewPlaces> {
  final _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add New Places'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(label: Text('Title')),
                controller: _titleController,
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onSurface),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add),
                    SizedBox(width: 8),
                    Text('Add Place'),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
