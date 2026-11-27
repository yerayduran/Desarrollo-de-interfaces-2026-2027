import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';
import 'form_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FormScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sharing Opportunities'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://imgs.search.brave.com/m2Fh2VJzlJwirYWTmPBrRwHvm0sGyfmNrUjZj80eYeo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMjE4/NTczMjU1Mi9waG90/by9tYWRyaWQtc3Bh/aW4tbWFkcmlkLXJl/Z2lvbmFsLXByZXNp/ZGVudC1pc2FiZWwt/ZCVDMyVBRGF6LWF5/dXNvLWF0dGVuZHMt/dGhlLWRlbGl2ZXJ5/LW9mLXRoZS04NXRo/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz15dGNhN0NBak9p/RGlaQkxEY1dpVVdM/ZlhzZjRZSmhFZkZD/Q3lDRDhIbjhJPQ',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    label: 'usuario',
                    controller: _usernameController,
                    obscureText: false,
                    icon: Icons.person,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Ingresa tu usuario';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    label: 'contraseña',
                    controller: _passwordController,
                    icon: Icons.lock,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Ingresa tu contraseña';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _submit,
                      child: const Text('Iniciar sesión'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}