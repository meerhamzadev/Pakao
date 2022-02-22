import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
    const Settings({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        bool isSwitched = true;

        return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
                title: const Text('Settings'),
                backgroundColor: Colors.black,
            ),
            body: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        const Text('Setting', style: TextStyle(color: Colors.white)),
                        
                        Card(
                            color: const Color.fromARGB(193, 158, 158, 158),
                            child: Expanded(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                        Row(
                                            children: const [
                                                Icon(Icons.language, color: Colors.white),
                                                SizedBox(width: 20),
                                                Text('Language', style: TextStyle(color: Colors.white)),
                                            ],
                                        ),
                                        TextButton(
                                            child: const Text('English', style: TextStyle(color: Colors.orange)),
                                            onPressed: () {},
                                        ),
                                    ],
                                )
                            ),
                        ),
                        
                        const Divider(color: Color.fromARGB(193, 158, 158, 158)),
                        const Text('Notification', style: TextStyle(color: Colors.white)),
                        
                        Card(
                            color: const Color.fromARGB(193, 158, 158, 158),
                            child: Column(
                                children: [
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                            Row(
                                                children: const [
                                                    Icon(Icons.notifications_outlined, color: Colors.white),
                                                    SizedBox(width: 20),
                                                    Text('Push Notification', style: TextStyle(color: Colors.white)),
                                                ],
                                            ),
                                            Switch(
                                                value: isSwitched,
                                                onChanged: (value) {
                                                    isSwitched = !value;
                                                },
                                                activeTrackColor: Colors.orange,
                                                activeColor: Colors.orange,
                                            ),
                                        ],
                                    ),
                                    
                                    const Divider(color: Color.fromARGB(193, 158, 158, 158)),
                                    
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                            Row(
                                                children: const [
                                                    Icon(Icons.email_outlined, color: Colors.white),
                                                    SizedBox(width: 20),
                                                    Text('Email Notification', style: TextStyle(color: Colors.white)),
                                                ],
                                            ),
                                            Switch(
                                                value: isSwitched,
                                                onChanged: (value) {
                                                    isSwitched = !value;
                                                },
                                                activeTrackColor: Colors.orange,
                                                activeColor: Colors.orange,
                                            ),
                                        ],
                                    ),
                                ],

                            ),
                        ),
                    ]
                ),
            ),
        );
    }
}
