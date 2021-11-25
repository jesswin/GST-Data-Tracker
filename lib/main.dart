import 'package:flutter/material.dart';
import 'package:masters_gst/Screens/search_screen.dart';
import 'package:masters_gst/Services/fetch_gst_data.dart';
import 'package:masters_gst/Utilities/Colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masters GST',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//Data is added into the DB, to try a Demo of Application, here are some ID's

// -> GST06072001
// -> GST17042003
// -> GST01012000

  var isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    //loading Indicator start
    setState(() {
      isLoading = true;
    });

    //calling function to fetch Data (handling Exception handling in Services files)
    await fetchGstData();

    //loading Indicator stop
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          //elevation:0 to keep same level for Header.
          backgroundColor: primaryColor,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: //Rendering Screen according to Loading Flag
            isLoading
                ? const Center(child: CircularProgressIndicator())
                : SearchScreen());
  }
}
