import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_demo/provider.dart';
import 'package:instagram_demo/common_widgets/customtextfformfield.dart';
import 'common_widgets/profile_photo.dart';


class LoginPage extends ConsumerStatefulWidget {
  LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {

  // 1. Formu kontrol etmek için bir anahtar (Key) oluşturuyoruz
  final _formKey = GlobalKey<FormState>();


  // 2. Metinleri hafızada tutacak kumandalarımız (Controller)
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Controller'lar hafıza kapladığı için sayfa kapanırken onları yok etmeliyiz
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:  Colors.deepOrange,
        title: Text("Login Page"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey, // Formumuzu anahtara bağlıyoruz
            child: Container(
              color: Colors.tealAccent,
              child: Column(
                children: [

                  SizedBox(height: 20,),

                  ProfileStack(),

                  const SizedBox(height: 40),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),

                    child: CustomTextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        label: "E-mail",
                        prefixicon: Icons.mail,
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return "E-Mail boş bırakılamaz";
                          }
                          if (!value.contains("@")){
                            return "Geçersiz E-Mail";
                          }
                          return null;
                        },
                    ),

                      //Usttekinin altta formal kullanımı
                    /*TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: "E-Mail",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "E-Mail boş bırakılamaz";
                        }
                        if (!value.contains("@")){
                          return "Geçersiz E-Mail";
                        }
                        return null;
                      },
                    ),*/
                  ),

                  const SizedBox(height: 40),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Şifre boş bırakılamaz";
                        }
                        if (value.length < 6 ){
                          return "şifre 6 haneden az olamaz";
                        }
                        return null;
                      },
                    ),
                  ),

                  const SizedBox(height: 40),

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                      onPressed: () {

                        if (_formKey.currentState!.validate()){
                          // İŞTE VERİLERİ BURADAN ALIP VERİTABANINA GÖNDERECEKSİN
                          String email = _emailController.text;
                          String password = _passwordController.text;

                          // Şimdilik test için konsola yazdırıyoruz
                          print("Veritabanına gönderilecek Email: $email");
                          print("Veritabanına gönderilecek Şifre: $password");

                          String extractedName= email.split("@").first;
                          if (extractedName.trim().length<3){
                            extractedName = "username";
                          }
                          ref.read(ad.notifier).state = extractedName;

                          context.go("/homepage");
                        }
                      },
                      child: Text("Giriş Yap", style: TextStyle(color: Colors.white, fontSize: 16))
                  ),

                  const SizedBox(height: 40),



                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hesabın yok mu?"),
                      TextButton(
                        onPressed: (){
                          /*Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignUpPage())
                                );*/
                          context.push("/signuppage");
                        },
                        child: Text(
                          "Kayıt Ol!",
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}