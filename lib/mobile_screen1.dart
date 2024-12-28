import 'package:flutter/material.dart';
import 'slider.dart';
import 'model/data.dart';
import 'package:badges/badges.dart' as badges;

class FirstScreenMobile extends StatefulWidget {
  const FirstScreenMobile({Key? key}) : super(key: key);

  @override
  State<FirstScreenMobile> createState() => _FirstScreenMobileState();
}

class _FirstScreenMobileState extends State<FirstScreenMobile> {
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
                  
              ],
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/bg1.png'),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: EdgeInsets.only(top: 90, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 230,
                        padding: EdgeInsets.only(top: 25.0, bottom: 25),
                        child: Text(
                          'Find Your Perfect Jewelry Match',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(135, 20),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            side: BorderSide(width: 0.5, color: Colors.white)),
                        child: Text(
                          'Start Shopping',
                          style:
                              TextStyle(fontSize: 11, fontFamily: 'Montserrat'),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            floating: true,
            pinned: true,
            snap: false,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                child: Text(
                  'Explore Our Wide Range of Jewelry and Accessories to Showcase Your Unique Style',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'New Collections',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Check our new collections',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 350,
                          child: NewProduct(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
