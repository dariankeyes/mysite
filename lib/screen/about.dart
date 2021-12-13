import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 35,
        ),
        const CircleAvatar(
          radius: 100,
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: const [
              Text('Darian Keyes'),
              SizedBox(
                height: 10,
              ),
              Text('Entrepenuer > Digital Nomad > Creator'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    _launchURL(url: 'https://www.linkedin.com/in/dariankeyes');
                  },
                  icon: const Icon(
                    FontAwesomeIcons.linkedinIn,
                    size: 30,
                  )
              ),
              IconButton(
                  onPressed: () {
                    _launchURL(url: 'https://www.youtube.com/channel/UC-YSun9U00Yi2qU5GO9gaWQ');
                  },
                  icon: const Icon(
                    FontAwesomeIcons.youtube,
                    size: 30,
                  )
              ),
            ],
          ),
        ),

      ],
    );
  }
}

void _launchURL({required url}) async {
  if (!await launch(url)) throw 'Could not launch $url';
}