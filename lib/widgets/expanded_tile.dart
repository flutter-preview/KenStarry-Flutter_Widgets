import 'package:flutter/material.dart';

class ExpandedTitle extends StatelessWidget {
  const ExpandedTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ExpansionTile(
          title: Text('Animals'),
        children: [
          ListTile(
            leading: Icon(Icons.handshake),
            title: Text('handshake'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.handshake),
            title: Text('handshake'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.handshake),
            title: Text('handshake'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.handshake),
            title: Text('handshake'),
            onTap: (){},
          ),
        ],
      )),
    );
  }
}
