import 'package:favorite_places/widgets/location_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places/provider/user_places.dart';
import 'package:favorite_places/widgets/input_image.dart';
import 'dart:io';

class AddNewPlaces extends ConsumerStatefulWidget {
  const AddNewPlaces({super.key});

  @override
  ConsumerState<AddNewPlaces> createState() => _AddNewPlacesState();
}

class _AddNewPlacesState extends ConsumerState<AddNewPlaces> {
  final _titleController = TextEditingController();
  File? _selectedImage;

  void _savePlace() {
    final enteredTitle = _titleController.text;
    if (enteredTitle.isEmpty || _selectedImage == null) {
      return;
      //you can handle it visually i.e. alert or snacbar
    }
    ref
        .read(userPLaceProvider.notifier)
        .addPlace(enteredTitle, _selectedImage!);

    Navigator.of(context).pop();
  }

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
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            const SizedBox(height: 12),
            ImageInput(
              onPickImage: (File image) {
                _selectedImage = image;
              },
            ),
            const SizedBox(height: 12),
            LocationInput(),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _savePlace,
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
      ),
    );
  }
}
