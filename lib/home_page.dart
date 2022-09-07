import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  final List<Map<String, dynamic>> content = [
    {
      "price": '50.000.00',
      "label": 'Netflix',
      "image": 'assets/netflix.png',
      "type": 'Month subscription'
    },
    {
      "price": '50.000.00',
      "label": 'Netflix',
      "image": 'assets/gopay.png',
      "type": 'Tax'
    },
    {
      "price": '19.000.00',
      "label": 'Paypal',
      "image": 'assets/paypal.png',
      "type": 'Buy item'
    },
    {
      "price": '50.000.00',
      "label": 'Netflix',
      "image": 'assets/netflix.png',
      "type": 'Month subscription'
    },
    {
      "price": '50.000.00',
      "label": 'Netflix',
      "image": 'assets/gopay.png',
      "type": 'Tax'
    },
    {
      "price": '19.000.00',
      "label": 'Paypal',
      "image": 'assets/paypal.png',
      "type": 'Buy item'
    },
    {
      "price": '50.000.00',
      "label": 'Netflix',
      "image": 'assets/netflix.png',
      "type": 'Month subscription'
    },
    {
      "price": '50.000.00',
      "label": 'Netflix',
      "image": 'assets/gopay.png',
      "type": 'Tax'
    },
    {
      "price": '19.000.00',
      "label": 'Paypal',
      "image": 'assets/paypal.png',
      "type": 'Buy item'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Wallet',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w600)),
                      Text('Hai, $title',
                          style: GoogleFonts.poppins(
                              color: Colors.grey, fontSize: 16)),
                    ],
                  ),
                  const Icon(
                    Icons.person,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xff2C3C4D),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "IDR 100.000.00",
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.white;
                            } else if (states
                                .contains(MaterialState.disabled)) {
                              return Colors.white;
                            }
                            return Colors.white;
                            // Use the component's default.
                          },
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Transfer',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Wrap(
                spacing: 35,
                runSpacing: 35,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  customMenu('Transfer', Icons.exit_to_app_rounded),
                  customMenu('Payment', Icons.payment),
                  customMenu('Payout', Icons.outbox_rounded),
                  customMenu('Top Up', Icons.attach_money),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Last Transaction',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Last Transaction',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff2C3C4D),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.all(16),
                itemCount: content.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(content[index]['image']),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  content[index]['label'],
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  content[index]['type'],
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Text(
                          content[index]['price'],
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Column customMenu(String label, IconData icon) {
  return Column(
    children: [
      Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 5,
              color: Colors.black.withOpacity(0.3),
            ),
          ],
        ),
        child: Center(
          child: Icon(icon),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Text(label,
          style: GoogleFonts.poppins(
            color: const Color(0xff2C3C4D),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ))
    ],
  );
}
