import 'package:flutter/material.dart';

class updateproduct extends StatefulWidget {
  const updateproduct({super.key});

  @override
  State<updateproduct> createState() => _addproductState();
}

class _addproductState extends State<updateproduct> {
  final TextEditingController _PNcontrolar = TextEditingController();
  final TextEditingController _UPcontrolar = TextEditingController();
  final TextEditingController _Qcontrolar = TextEditingController();
  final TextEditingController _TPcontrolar = TextEditingController();
  final TextEditingController _IMJcontrolar = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Update Product",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String? valu) {
                      if (valu == null || valu.trim().isEmpty) {
                        return 'Write Your Product Name';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    controller: _PNcontrolar,
                    decoration: const InputDecoration(
                        hintText: 'Product Name', labelText: 'Product Name'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String? valu) {
                      if (valu == null || valu.trim().isEmpty) {
                        return 'Write Your Product Unit Price';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: _UPcontrolar,
                    decoration: const InputDecoration(
                        hintText: 'Unit Price', labelText: 'Unit Price'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String? valu) {
                      if (valu == null || valu.trim().isEmpty) {
                        return 'Write Your Product Quantity';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: _Qcontrolar,
                    decoration: const InputDecoration(
                        hintText: 'Quantity', labelText: 'Quantity'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String? valu) {
                      if (valu == null || valu.trim().isEmpty) {
                        return 'Write Total Price';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: _TPcontrolar,
                    decoration: const InputDecoration(
                        hintText: 'Total Price', labelText: 'Total Price'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String? valu) {
                      if (valu == null || valu.trim().isEmpty) {
                        return 'Select Your Product Image';
                      }
                      return null;
                    },
                    controller: _IMJcontrolar,
                    decoration: const InputDecoration(
                        hintText: 'Image', labelText: 'Image'),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: const Text("Add"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _PNcontrolar.dispose();
    _UPcontrolar.dispose();
    _Qcontrolar.dispose();
    _TPcontrolar.dispose();
    _IMJcontrolar.dispose();
    super.dispose();
  }
}
