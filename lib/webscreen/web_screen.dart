import 'package:flutter/material.dart';
import '../model/data.dart';

class FirstScreenWeb extends StatelessWidget {
  final gridCount;
  const FirstScreenWeb({Key? key, required this.gridCount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'images/logo.png',
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Shop',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Catalogue',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Contact us',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_bag),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/bg1.png'),
                        fit: BoxFit.cover)),
                child: Padding(
                    padding: EdgeInsets.only(top: 120, left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 400,
                          padding: EdgeInsets.only(bottom: 5, top: 25),
                          child: Text(
                            'Find Your Perfect Jewelry Match',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                        Container(
                          width: 300,
                          padding: EdgeInsets.only(top: 15.0, bottom: 25),
                          child: Text(
                            'Explore Our Wide Range of Jewelry and Accessories to Showcase Your Unique Style',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(200, 50),
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              side:
                                  BorderSide(width: 0.5, color: Colors.white)),
                          child: Text(
                            'Start Shopping',
                            style: TextStyle(
                                fontSize: 11, fontFamily: 'Montserrat'),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ))),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
              Text(
                'New Collections',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Check out our new collections',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 16),
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: gridCount,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 3 / 4,
                ),
                itemCount:
                    dataItemsList.where((data) => data.isNew).toList().length,
                itemBuilder: (context, index) {
                  final newData =
                      dataItemsList.where((data) => data.isNew).toList();
                  final data = newData[index];
                  return Card(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(data.logo),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        data.name,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$${data.price}',
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                    ],
                  ));
                },
              ),
              SizedBox(height: 50),

              // Categories Section
              Text(
                'Categories',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Discover our collections by categories',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 16),
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  final Data data = dataItemsList[index];
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(data.logo),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Category ${index + 1}',
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 50),
            ]))
          ],
        )));
  }
}
