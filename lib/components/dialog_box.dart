import 'package:flutter/material.dart';
import 'package:todo_flutter/components/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Getting the users input
            TextField(
              controller: controller,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Create a new task",
                isDense: true,
                contentPadding: EdgeInsets.all(8),
              ),
            ),

            const SizedBox(
              height: 15,
            ),
            // Buttons
            Row(
              children: [
                // save
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(
                  width: 15,
                ),
                // cancel
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
