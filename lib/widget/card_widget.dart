import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final int index;

  const CardWidget({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlImage = 'https://source.unsplash.com/random?sig=$index';

    return Card(
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.black26,
                  child: Image.network(urlImage, fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Random Photo',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      'Unsplash',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
