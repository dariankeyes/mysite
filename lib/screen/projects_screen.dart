import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Row(
                  children: const [
                    Image(
                      height: 300,
                      image: AssetImage('assets/images/listbeegone.png'),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('List Bee Gone'),
                        subtitle: Text('Avaliable on iOS'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Column(
          children: const [
            Text(
              'Boring Links',
            )
          ],
        )),
      ],
    );
  }
}
