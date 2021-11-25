import 'package:flutter/material.dart';
import 'package:super_app/screens/tasks_screen.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
import '../mixins/validation_mixin.dart';

/*
class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();

}

_LoginState exdends State<Login>
 */



class Login extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
    child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Form(
                child: Column(
                  children: [
                    Text(
                      'Вход',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(height: 20,),
                    Container(child:
                      TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide:
                              BorderSide(width: 1, color: Colors.grey)
                          ),
                          labelText: 'Номер',
                        ),

                   validator: Validators.compose([
                  Validators.required('phone is required'),
                   Validators.email('Enter valid phone number')
                  ]),


                      ),
                    ),
                    SizedBox(height: 20,),

                    Container(child:
                    TextFormField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey)
                        ),
                        labelText: 'Пароль',
                      ),

                      validator: (value) {
                        if (value.isEmpty) {
                          return "* Required";
                        }
                        else if (value == '12345678'){
                          return null;
                        }
                        else if (value.length < 6) {
                          return "Password should be atleast 6 characters";
                        } else if (value.length > 15) {
                          return "Password should not be greater than 15 characters";
                        } else
                          return null;
                      },



                    ),
                    ),
                    SizedBox(height: 20,),
                    Container(width: MediaQuery.of(context).size.width,
                    height: 50,
                    child:
                      FlatButton(onPressed: (){


                        if( _formKey.currentState.validate()
                        ){
                          print(email.text);
                          print(password.text);
                          print('success');
                      }



                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TasksScreen()),
                        );

                      },
                   child: Text('Login'),
                      textColor: Colors.white,
                      color: Colors.black,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10)
                      ),
                      ),

                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),),
    );
    }
  }

