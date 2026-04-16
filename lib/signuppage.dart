import 'package:flutter/material.dart';
import 'package:instagram_demo/common_widgets/customtextfformfield.dart';

class SignUpPage extends StatefulWidget {

  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {



  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _surnamecontroller = TextEditingController();

  @override
  void dispose(){
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _namecontroller.dispose();
    _surnamecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
        backgroundColor: Colors.white38,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              color: Colors.greenAccent,
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Column(
                children: [
                  SizedBox(height: 50,),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: CustomTextFormField(
                        controller: _namecontroller,
                        keyboardType: TextInputType.name,
                        obscureText: false, label: "Name",
                        prefixicon: Icons.person,
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return "Surname boş bırakılamaz";
                          }
                          return null;
                        },
                    ),
                  ),

                  const SizedBox(height: 40),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: CustomTextFormField(
                      controller: _surnamecontroller,
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      label: "Surname",
                      prefixicon: Icons.person,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Surname boş bırakılamaz";
                        }
                        return null;
                      },
                    ),
                  ),

                  const SizedBox(height: 40),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: CustomTextFormField(
                      controller: _emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      label: "E-mail",
                      prefixicon: Icons.email,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "E-mail boş bırakılamaz";
                        }
                        if (!value.contains("@")){
                          return "Geçersiz E-mail";
                        }
                        return null;
                      },
                    ),
                  ),

                  const SizedBox(height: 40),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: CustomTextFormField(
                      controller: _passwordcontroller,
                      obscureText: true,
                      label: "Password",
                      prefixicon: Icons.lock,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Şifre boş bırakılamaz";
                        }
                        if(value.length < 6){
                          return "Şifre 6 haneden az olamaz";
                        }
                        return null;
                      },
                    ),
                  ),

                  const SizedBox(height: 40),

                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}
