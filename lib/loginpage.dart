import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
            child: Column(
              children: [

                Container(
                  color: Colors.tealAccent,
                  child: Column(
                    children: [

                      SizedBox(height: 20,),

                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.person,
                              size: 60,
                              color: Colors.blueAccent,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 2,
                                  )
                              ),
                              child: IconButton(
                                  onPressed: (){
                                    print("kameraya tıklandı");
                                  },
                                  icon: Icon(Icons.camera_alt, color: Colors.purpleAccent, size: 20,)
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 40),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: TextFormField(
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
                        ),
                      ),
                      const SizedBox(height: 40), // İki kutucuk arasına boşluk

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
                                context.go("/signuppage");
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}