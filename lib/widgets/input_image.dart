import 'package:flutter/material.dart';

class InputImage extends StatefulWidget {
  const InputImage({super.key});

  @override
  State<InputImage> createState() {
    return _InputImageState();
  }
}

class _InputImageState extends State<InputImage> {

  void _takePicture() {

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.surfaceBright.withValues(alpha: 0.2),
        ),
      ),
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      child: TextButton.icon(
        icon: Icon(Icons.camera),
        label: Text('Take Picture'),
        onPressed: _takePicture,
      ),
    );
  }
}
