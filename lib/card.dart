import 'package:flutter/material.dart';

import 'bg_imagr.dart';


class change_name_card extends StatelessWidget {
  const change_name_card({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       BgImage(),
        SizedBox(
          height: 20,
        ),
        Text(
          myText,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Enter something here !",
              border: OutlineInputBorder(),
              labelText: "|Name",
            ),
          ),
        )
      ],
    );
  }
}
