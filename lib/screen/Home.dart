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
        body: FutureBuilder(
            future: fetchUniversity(),
            builder: (context, snapshort) {
              return ListView.builder(
                itemCount: snapshort.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      _launchUrl(snapshort.data![index].webpage[0]);
                    },
                    title: Text(
                        snapshort.data![index].universityname),
                    subtitle: Text(snapshort.data![index].country),
                  );
                },
              );
            }));
  }
}
