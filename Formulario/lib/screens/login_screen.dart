import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sharing Opportunities'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.network(
                "https://imgs.search.brave.com/m2Fh2VJzlJwirYWTmPBrRwHvm0sGyfmNrUjZj80eYeo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMjE4/NTczMjU1Mi9waG90/by9tYWRyaWQtc3Bh/aW4tbWFkcmlkLXJl/Z2lvbmFsLXByZXNp/ZGVudC1pc2FiZWwt/ZCVDMyVBRGF6LWF5/dXNvLWF0dGVuZHMt/dGhlLWRlbGl2ZXJ5/LW9mLXRoZS04NXRo/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz15dGNhN0NBak9p/RGlaQkxEY1dpVVdM/ZlhzZjRZSmhFZkZD/Q3lDRDhIbjhJPQ",
                width: 300,
                height: 300,

              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: 'Username',

                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },

                      child: const Text('Iniciar sesión'),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}