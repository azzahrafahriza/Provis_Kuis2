import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<Widget> myWidget = [
    Container(
      height: 50,
      width: 300,
    ),
  ];

  get index => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
            leading: FlutterLogo(),
            backgroundColor: Colors.blueGrey,
            title: Text('Quiz Flutter'),
            actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
        // body: Center(
        //   child: ListView.separated(
        //     itemCount: 25,
        //     separatorBuilder: (BuildContext context, int index) => const Divider(
        //       color: Colors.black,
        //     ),
        //     itemBuilder: (BuildContext context, int index) {
        //       return ListTile(
        //         title: Center(
        //             child: Text(
        //           'Campus Alert',
        //           style: TextStyle(
        //             color: Colors.red,
        //             fontSize: 12,
        //           ),
        //         )),
        //         subtitle: Center(
        //             child: Text(
        //           'Notifikasi ke-$index',
        //           style: TextStyle(color: Colors.black),
        //         )),
        //       );
        //     },
        //   ),
        // ),
        body: Center(
          child: Column(children: [
            Container(
              // : Text("Actifity"),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('assets/sky.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                  child: const Text(
                'Actifity',
                style: TextStyle(fontSize: 50, color: Colors.white),
              )),
            ),
            Container(
              height: 200,
              width: double.infinity,
              // color: Colors.blue,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Icon(
                    Icons.verified,
                    size: 70,
                  )),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "No New Notifications",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                        "You're caught up! Checkback for notifications, campus alert and more\n"),
                  ),

                  // Center(child: Text("Campus Alert\n"),
                  // ),
                  // Center(child: Text("Campus Alert\n"),
                  // ),
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.black, width: 2),
                    // ),
                    width: double.infinity,
                    height: 50,
                    color: Colors.white,
                    // child: Text("campus Alert"),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Campus Alert\n",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "Notifikasi ke-0",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    // box
                  ),

                  // Expanded(child: child)
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text("Campus Alert\n"),
                  //     Text("Notifikasi ke-$index"),
                  //   ],
                  // ),
                ],
                // child: Icon(Icons.trending_up),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          currentIndex: 0,
          showUnselectedLabels: true,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.black26,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Kelompok 6'),
            content: const Text(
                'Azzahra Fahriza -> (azzahrafahriiza@upi.edu)\nTalitha Syahla -> (talitha_syahla@upi.edu)'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              'Kami berjanji  tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
