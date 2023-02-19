import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';



class TextFieldExample extends StatefulWidget {
  const TextFieldExample({Key? key}) : super(key: key);

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lasttname = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field Example"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: firstname,
              decoration: InputDecoration(hintText: "First name"),
              textInputAction: TextInputAction.next,
              //onEditingComplete : () => FocusScope.of(context).nextFocus(),
            ),
            TextFormField(
              controller: lasttname,
              decoration: InputDecoration(hintText: "Last name"),
              textInputAction: TextInputAction.next,
              //onEditingComplete : () => FocusScope.of(context).nextFocus(),// focus to next
            ),
            TextFormField(
              controller: address,
              decoration: InputDecoration(

                  labelText: "Address"),
              textInputAction: TextInputAction.next,
              //onEditingComplete : () => FocusScope.of(context).nextFocus(),

            ),
            CustomTextField(password,
              onEditingComplete : () => FocusScope.of(context).nextFocus(),
              borderRadius:BorderRadius.all(Radius.circular(50)),
              backgroundColor: Colors.red,
              border: Border.all(
                color: Colors.green,
                width: 5,
                style: BorderStyle.solid,
              ),
              keyboardType: TextInputType.text,
              hint: "Password",
              pwdVisibilityColor: Colors.blue,

            ),
            CustomTextField(firstname,
              password: false,

              onEditingComplete : () => FocusScope.of(context).nextFocus(),

            ),

            FlutterPwValidator(
              controller: password,
              minLength: 8,
              uppercaseCharCount: 2,
              numericCharCount: 3,
              specialCharCount: 1,
              normalCharCount: 3,
              width: 400,
              height: 150,
              onSuccess: () {
                print("MATCHED");
                ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                    content: new Text("Password is matched")));
              },
              onFail: () {
                print("NOT MATCHED");
              },
            ),

            TextFormField(
              controller: password,
              decoration: InputDecoration(hintText: "Password"),
              textInputAction: TextInputAction.done,
              //onEditingComplete : () => FocusScope.of(context).unfocus(),// Unfocus and hide keyboard
            ),
          ],
        ),
      ),
    );
  }
}
