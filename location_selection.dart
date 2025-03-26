import 'package:flutter/material.dart';

class LocationPopup extends StatelessWidget {
  const LocationPopup({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pop-Up Location Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Choose Your Location'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text('Nairobi'),
                        onTap: () {
                          // Navigate to the homepage with selected location
                          Navigator.pop(context); // Close the pop-up
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => HomePage(location: 'Nairobi'),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text('Thika'),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(location: 'Thika'),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text('Mombasa'),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => HomePage(location: 'Mombasa'),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Open Location Popup'),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String location;

  const HomePage({required this.location, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Text('Welcome to $location!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: LocationPopup()));
