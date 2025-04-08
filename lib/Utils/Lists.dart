import 'package:flutter/material.dart';

class Lists extends StatelessWidget {
  final String imageIconPath;
  final String tiletitle;
  final String subtitle;
  final Widget screen;
  const Lists(
      {super.key,
      required this.imageIconPath,
      required this.subtitle,
      required this.tiletitle,
      required this.screen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Stats
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 6,
                              spreadRadius: 1)
                        ]),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          imageIconPath,
                          width: 100,
                          height: 100,
                        )),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(tiletitle,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 2),
                    Text(subtitle,
                        style: TextStyle(fontSize: 16, color: Colors.grey)),
                  ],
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (builder) => screen));
                },
                icon: Icon(Icons.arrow_forward_ios))
          ],
        )
        // Transactions
      ],
    );
  }
}
