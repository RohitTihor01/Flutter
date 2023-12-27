import 'package:flutter/material.dart';

class LIST2TILE extends StatefulWidget {
  final String name;
  final String name2;
  final String hint;

  const LIST2TILE({
    Key? key,
    required this.name,
    required this.name2,
    required this.hint,
  }) : super(key: key);

  @override
  State<LIST2TILE> createState() => _LIST2TILE();
}

class _LIST2TILE extends State<LIST2TILE> {
   TextEditingController _textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
    // Set the initial value of the text controller to the hint text
    _textEditingController.text = widget.hint;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      title: Text(widget.name),
      contentPadding: const EdgeInsets.all(20.0), // Adjust padding as needed
      trailing: SizedBox(
        width: 170, // Set a suitable width based on your design
        child: TextField(


          decoration: InputDecoration(enabledBorder:  const OutlineInputBorder(borderSide: BorderSide(color: Colors.white),


          ),
            focusedBorder:  const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),

            hintText: widget.hint,
            alignLabelWithHint: true,
            hintStyle: TextStyle(color: Colors.grey[600]),
            labelText: widget.name2,


          ),
        ),

      ),
    );
  }
}
