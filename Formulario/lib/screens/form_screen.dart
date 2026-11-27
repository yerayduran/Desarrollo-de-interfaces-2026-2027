import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class FormScreen extends StatelessWidget {
  FormScreen({super.key});

  final _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormField(
              builder: (state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Titulo',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Ingresa tu titulo de trabajo';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    

                  ]);}
    )])));
  }

}