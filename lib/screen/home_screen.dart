import 'package:flutter/material.dart';

class Emi extends StatefulWidget {
  const Emi({Key? key}) : super(key: key);

  @override
  State<Emi> createState() => _EmiState();
}

class _EmiState extends State<Emi> {
  double amount = 100000;
  double rate = 1;
  double year = 1;
  double Emi = 0;
  double interest = 0;
  double total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xC2113F73),
        title: Text(
          "Emi Calculator",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 2,
              fontSize: 25),
        ),
        centerTitle: true,
        leading:
            Icon(Icons.account_balance_outlined, color: Colors.white, size: 25),
        actions: [
          Icon(Icons.account_balance_wallet, color: Colors.white, size: 25),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //1 slider
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Loan Amount",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 2),
                  ),
                  Container(
                    height: 35,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.symmetric(
                        horizontal: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2),
                      ),
                    ),
                    child: Text(
                      "\$ ${amount.toInt()}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Slider(
              value: amount,
              activeColor: Color(0xC2113F73),
              label: "${amount.toInt()}",
              max: 10000000,
              min: 100000,
              divisions: 100,
              thumbColor: Color(0xC2113F73),
              onChanged: (value) {
                setState(() {
                  amount = value;
                  double month= year*12;
                  interest=(amount*rate)/100;
                  total=amount+interest;
                  Emi=total/month;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ 1 lac",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "\$ 1 cr",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            //2 slider
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tenure (Year)",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 2),
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.symmetric(
                        horizontal: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2),
                      ),
                    ),
                    child: Text(
                      "${year.toInt()} Year",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Slider(
              value: year,
              activeColor: Color(0xC2113F73),
              max: 30,
              min: 1,
              thumbColor: Color(0xC2113F73),
              onChanged: (value) {
                setState(() {
                  year = value;
                  double month= year*12;
                  interest=(amount*rate)/100;
                  total=amount+interest;
                  Emi=total/month;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1 y",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "30 Y",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            //3 slider
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rate Of Intrest(%)",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 2),
                  ),
                  Container(
                    height: 35,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.symmetric(
                        horizontal: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2),
                      ),
                    ),
                    child: Text(
                      "${rate.toInt()}%",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Slider(
              value: rate,
              activeColor: Color(0xC2113F73),
              max: 15,
              min: 1,
              thumbColor: Color(0xC2113F73),
              onChanged: (value) {
                setState(() {
                  rate = value;
                  double month= year*12;
                  interest=(amount*rate)/100;
                  total=amount+interest;
                  Emi=total/month;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1 %",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "15 %",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            //calculator
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xC2113F73),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        "Monthly loan EMI",
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 0,
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            wordSpacing: 2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 15),
                      child: Text(
                        "${Emi.toInt()}",
                        style: TextStyle(
                          color: Colors.blueAccent.shade400,
                          letterSpacing: 0,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        "Principal Amount",
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 0,
                            fontSize: 18,
                            fontWeight: FontWeight.w200,
                            wordSpacing: 2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 15),
                      child: Text(
                        "${amount.toInt()}",
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 0,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        "Interest Amount",
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 0,
                            fontSize: 18,
                            fontWeight: FontWeight.w200,
                            wordSpacing: 2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 15),
                      child: Text(
                        "${interest.toInt()}",
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 0,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        "Total Amount Payable",
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 0,
                            fontSize: 18,
                            fontWeight: FontWeight.w200,
                            wordSpacing: 2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 15),
                      child: Text(
                        "${total.toInt()}",
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 0,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
//0xC2113F73
