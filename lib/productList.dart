import 'package:crudeapp/addProductScreen.dart';
import 'package:flutter/material.dart';

class productList extends StatefulWidget {
  const productList({super.key});

  @override
  State<productList> createState() => _productListState();
}

class _productListState extends State<productList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Product List',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ListView.separated(
            separatorBuilder: (_, __) {
              return const Divider();
            },
            itemCount: 5,
            itemBuilder: ((context, index) {
              return buildproductList();
            }),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => addproduct()),
            );
          },
          child: const Icon(
            Icons.add,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }

  Widget buildproductList() {
    return ListTile(
      leading: SizedBox(
        height: 60,
        width: 60,
        child: Image.network(
            'https://www.youhome.space/image/cache/catalog/menshoes/12-150x150.jpg'),
      ),
      title: const Text(
        'Product Name',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      subtitle: const Wrap(
        children: [
          Text('Unit Price: 100'),
          Text('Quantity : 10'),
          Text('Total Price: 1000'),
        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
