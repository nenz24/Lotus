import 'package:flutter/material.dart';
import 'package:myapp/mobilescreen/detail_screen.dart';
import 'package:badges/badges.dart' as badges;
import 'package:myapp/mobilescreen/mobile-screen-2/shop-widget/data_widget.dart';
import 'package:myapp/model/data.dart';

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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 44, 44, 44),
              leading: Image.asset('images/logo.png', scale: 10),
              title: isSearching
                  ? TextField(
                      controller: searchController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: "Search...",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    )
                  : null,
              actions: [
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
              ],
              pinned: false,
              floating: true,
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/Bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    'RING',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.08,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: dataItemsList.length,
                  itemBuilder: (context, index) {
                    final Data items = dataItemsList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(data: items);
                        }));
                      },
                      child: DataWidget(data: items),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart_checkout),
        backgroundColor: const Color.fromARGB(255, 92, 87, 87),
        foregroundColor: Colors.white,
        onPressed: () {},));
  }
}
