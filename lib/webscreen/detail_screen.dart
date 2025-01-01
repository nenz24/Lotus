import 'package:flutter/material.dart';
import 'package:myapp/model/data.dart';

class DetailScreenWeb extends StatefulWidget {
  final Data data;
  const DetailScreenWeb({Key? key, required this.data}) : super(key: key);

  @override
  State<DetailScreenWeb> createState() => _DetailWebScreen();
}

class _DetailWebScreen extends State<DetailScreenWeb> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.data.logo,
                      fit: BoxFit.cover,
                      height: 300,
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: widget.data.imageAsset.map((image) {
                        return Padding(
                          padding: const EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              image,
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 32),

            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.data.name,
                    style: const TextStyle(
                      fontSize: 32,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.data.description,
                    style:
                        const TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "White Gold Ring",
                    style: TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
                  ),
                  Text('Width: ${widget.data.width} mm', style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15
                  ),),
                  Text('Weight: ${widget.data.weight} gram', style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15
                  )),
                  Text(
                    "\$${widget.data.price.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 0.7, color: Colors.white),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                          child: const Text(
                            "Add to Bag",
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                        ),
                        const SizedBox(width: 16),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 0.7, color: Colors.black),
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                          child: const Text(
                            "Wish List",
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                        ),
                      ],
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
