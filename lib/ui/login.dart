import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login Admin", // Menampilkan teks "Login Admin" dengan ukuran font 22 dan weight bold
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 50),
                Center(
                  child: Form(
                    key: _formKey,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Column(
                        children: [
                          _usernameTextField(), // Menampilkan input field untuk username
                          SizedBox(height: 20),
                          _passwordTextField(), // Menampilkan input field untuk password
                          SizedBox(height: 40),
                          _tombolLogin(), // Menampilkan tombol "Login"
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _usernameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText:
              "Username"), // Menampilkan label "Username" pada input field
      controller: _usernameCtrl, // Menghubungkan controller dengan input field
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText:
              "Password"), // Menampilkan label "Password" pada input field
      obscureText: true, // Mengatur input field menjadi tipe teks tersembunyi
      controller: _passwordCtrl, // Menghubungkan controller dengan input field
    );
  }

  Widget _tombolLogin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        child: Text("Login"), // Menampilkan teks "Login" pada tombol
        onPressed: () {},
      ),
    );
  }
}
