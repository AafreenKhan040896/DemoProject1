import 'package:flutter/material.dart';

class BrowseButton extends StatefulWidget {
  const BrowseButton({
    Key? key,
  }) : super(key: key);

  @override
  State<BrowseButton> createState() => _BrowseButtonState();

  
}

class _BrowseButtonState extends State<BrowseButton>{
  @override
   Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Browse'),
      onPressed: () {},
    );
  }
  
}