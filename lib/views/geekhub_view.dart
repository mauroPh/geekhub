import 'package:flutter/material.dart';

class GeekHubHomePage extends StatelessWidget {
  GeekHubHomePage({super.key});
  final List<String> geekTopics = [
    'Star Was',
    'Marvel Comics',
    'Star Trek',
    'Lord of the Rings',
    'Video Games',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GeekHub'),
        ),
        body: Container(
          color: Colors.black87,
          child: ListView.builder(
            itemCount: geekTopics.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  hoverColor: Colors.yellowAccent,
                  tileColor: Colors.black87,
                  textColor: Colors.deepPurpleAccent,
                  iconColor: Colors.yellowAccent,
                  leading: const Icon(Icons.star),
                  title: Text(geekTopics[index]),
                  subtitle: const Text('Tap to learn more'),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(geekTopics[index]),
                          content: Text(
                              'This is some information about ${geekTopics[index]}.'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Close'))
                          ],
                        );
                      },
                    );
                  },
                ),
              );
            },
          ),
        ));
  }
}
