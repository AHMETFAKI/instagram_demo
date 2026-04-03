import 'package:flutter/material.dart';

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
                    child: TextFormField(
                      controller: _namecontroller,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "name boş bırakılamaz";
                        }
                        return null;
                      },
                    ),
                  ),

                  const SizedBox(height: 40),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      controller: _surnamecontroller,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_2_outlined),
                        labelText: "Surname",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
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
                    child: TextFormField(
                      controller: _emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "E-mail",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
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
                    child: TextFormField(
                      controller: _passwordcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
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
