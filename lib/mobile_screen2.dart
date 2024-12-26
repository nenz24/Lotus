import 'package:flutter/material.dart';

class SecondScreenMobile extends StatefulWidget {
  const SecondScreenMobile({Key? key}) : super(key: key);

  @override
  State<SecondScreenMobile> createState() => _SecondScreenMobileState();
}

class _SecondScreenMobileState extends State<SecondScreenMobile> {
  bool isSearching = false;
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
        title: isSearching
            ? TextField(
                controller: searchController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.white54),
                    border: InputBorder.none),
              )
            : Image.asset('images/logo.png', scale: 10),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(isSearching ? Icons.close : Icons.search),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      if (isSearching) {
                        isSearching = false;
                        searchController.clear();
                      } else {
                        isSearching = true;
                      }
                    });
                  },
                ),
                if (!isSearching)
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    color: Colors.white,
                    onPressed: () {},
                  )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart_checkout),
        backgroundColor: const Color.fromARGB(255, 92, 87, 87),
        foregroundColor: Colors.white,
        onPressed: (){}),
    );
  }
}
