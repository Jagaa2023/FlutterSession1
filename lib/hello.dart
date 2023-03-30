import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hello extends StatefulWidget {
  const hello({Key? key}) : super(key: key);

  @override
  State<hello> createState() => _helloState();
}

class _helloState extends State<hello> {

  final _formKey = GlobalKey<FormState>();
 final _editingController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    _editingController.text = "This is const text value";
  }


  @override
  Widget build(BuildContext context) {
    return

      Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: _editingController,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                  hintText: 'this is hint',
                  labelText: 'This is label text',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  suffixIcon: Icon(Icons.access_time),
                  prefixIcon: Icon(Icons.add_circle),

                ),

                autovalidateMode: AutovalidateMode.always,
                validator: (value) =>  NameCheck(value.toString()),

              ),

              ElevatedButton(onPressed: (){
                if (_formKey.currentState!.validate()== false  )
                  _editingController.text = 'Yes';
                else
                  _editingController.text = 'No';

              }, child: Text('Save')),

            ],
          ),
        ),
      );


  }

  NameCheck(String str) {

    if (str == "jg")
      return "Something wrong";
    else return null;

  }

  onPressJG() {


  }
}
