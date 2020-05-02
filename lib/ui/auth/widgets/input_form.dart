import 'package:flutter/material.dart';

class FormModel {
  String username;
  String password;
}

class InputForm extends StatefulWidget {
  InputForm({Key key, this.formKey, this.formModel}) : super(key: key);

  final GlobalKey<FormState> formKey;

  final FormModel formModel;

  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  String _validateField(String value) {
    if (value.length < 8 || value.length > 16) {
      return 'Value is incorrect';
    }

    return null;
  }

  @override
  void dispose() {
    _usernameFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: widget.formKey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                focusNode: _usernameFocus,
                onFieldSubmitted: (_) {
                  _usernameFocus.unfocus();
                  FocusScope.of(context).requestFocus(_passwordFocus);
                },
                onSaved: (val) => widget.formModel.username = val,
                decoration: InputDecoration(
                  isDense: true,
                  errorStyle: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 2.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xFFf5f8fa),
                  labelText: 'User name',
                ),
                validator: _validateField,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                focusNode: _passwordFocus,
                onFieldSubmitted: (_) {
                  _passwordFocus.unfocus();
                },
                onSaved: (val) => widget.formModel.password = val,
                obscureText: true,
                decoration: InputDecoration(
                  isDense: true,
                  errorStyle: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 2.0,
                  ),
                  border: OutlineInputBorder(
                    gapPadding: 16.0,
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(16),
                  filled: true,
                  fillColor: Color(0xFFf5f8fa),
                  labelText: 'password',
                ),
                validator: _validateField,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
