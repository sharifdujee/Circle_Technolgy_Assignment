import 'package:circletechnolgy/repository/university_repository.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Assignment"),

          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
        ),
        // GIF Image
        // body: Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'
        //     ,
        // ),
      // // Static Image with height
      // body: Image.network('https://picsum.photos/250?image=9',
      //   height: 420,
      //   fit: BoxFit.fill,
      // ),
      // Image With Circle Indicator
      // body: Stack(
      //   children: <Widget> [
      //     const Center(
      //       child: CircularProgressIndicator()
      //     ),
      //     Center(
      //       child: FadeInImage.assetNetwork(
      //         placeholder: 'assets/loading.gif',
      //         image: 'https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/cottage-on-the-hill-diana-angstadt.jpg',
      //       ),
      //     ),
      //   ],
      // ),
        //Circle IT Assignment
        body: FutureBuilder(
          future: fetchUniversity(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // While data is being fetched, you might show a loading indicator
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              // If there's an error, show an error message or handle it accordingly
              return Center(child: Text('Error fetching data'));
            } else if (snapshot.hasData) {
              // If data is available, display it
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      _launchUrl(snapshot.data![index].webpage[0]);
                    },
                    title: Text(snapshot.data![index].universityname),
                    subtitle: Text(snapshot.data![index].country),
                    leading:
                    Image.network('https://picsum.photos/250?image=9'),
                  );
                },
              );
            } else {
              // Handle the case where snapshot.data is null (data not available)
              return Center(child: Text('No data available'));
            }
          },
        ),

    );
  }
}
