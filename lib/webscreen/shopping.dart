import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/mobilescreen/mobile-screen-2/shop-widget/data_widget.dart';
import 'package:myapp/model/data.dart';
import 'package:myapp/webscreen/detail_screen.dart';
import 'package:myapp/webscreen/profile_screen.dart';

class Shopping extends StatelessWidget {
  final gridCount;
  const Shopping({Key? key, required this.gridCount}) : super(key: key);

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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyApp();
                    }));
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Shopping(
                        gridCount: dataItemsList.length,
                      );
                    }));
                  },
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ProfileWeb();
                    }));
                  },
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
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Bg.png'), fit: BoxFit.cover),
              ),
              child: Center(
                child: Text(
                  'RING',
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text('Filtered By'),
                        const VerticalDivider(
                          color: Colors.black,
                        )
                      ],
                    )),
                Container(
                    child: VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                )),
                Expanded(
                    flex: 3,
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 0.8,
                        ),
                        itemCount: dataItemsList.length,
                        itemBuilder: (context, index) {
                          final data = dataItemsList[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailScreenWeb(data: data);
                              }));
                            },
                            child: Card(
                                borderOnForeground: true,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                        child: Image.asset(
                                      data.logo,
                                      fit: BoxFit.cover,
                                    )),
                                    SizedBox(height: 5),
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text(
                                        data.name,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text(
                                        '\$${data.price}',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                    )
                                  ],
                                )),
                          );
                        }))
              ],
            )
          ],
        ),
      ),
    );
  }
}
