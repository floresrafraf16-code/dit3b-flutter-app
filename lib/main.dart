import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        //APP BAR PART / CENTER: TRUE
        backgroundColor: const Color.fromARGB(255, 232, 227, 227),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // FOR LOGO
                Image.network(
                  'https://grades.snc.edu.ph/SNC-Logo.png',
                  width: 120,
                  height: 120,
                ),
                SizedBox(height: 35),
                Text("Welcome back! We’ve missed you"),
                SizedBox(height: 25),

                // FOR TEXTFIELD
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 4, 110, 197),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: BorderSide(color: Colors.green, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 4, 110, 197),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: BorderSide(color: Colors.green, width: 2),
                    ),
                  ),
                ),

                // FOR FORGOT PASSWORD
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8, right: 4),
                    child: Text('Forgot Password?'),
                  ),
                ),
                SizedBox(height: 30),

                // FOR SIGN IN BUTTON
                Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),

                // FOR "CONTINUE WITH"
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 10,
                      ),
                    ),
                    Text(
                      "or Continue with",
                      style: TextStyle(color: Colors.grey[700], fontSize: 14),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 10,
                      ),
                    ),
                  ],
                ),
                // FOR GOOGLE AND APPLE
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.network(
                          'https://image.similarpng.com/file/similarpng/very-thumbnail/2020/06/Logo-google-icon-PNG.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png?20190503112358 2x',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
