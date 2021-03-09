import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  List<_FeaturePhoto> _feature() {
    return [
      _FeaturePhoto(imageURL: "https://wallpaperaccess.com/full/136949.jpg",
          title: 'Beatufil Cat',
          subtitle: 'I love cat',
          featureString: 'Feature1'),
      _FeaturePhoto(imageURL: "https://wallpaperaccess.com/full/624111.jpg",
          title: 'Loud bird',
          subtitle: 'sometimes the bird is loud',
          featureString: 'Feature2'),
      _FeaturePhoto(imageURL: "https://wallpaperaccess.com/full/749796.jpg",
          title: 'Rabit',
          subtitle: 'She is cute',
          featureString: 'Feature3'),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 220,
        child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(10.0),
            children: _feature().map<Widget> ( (photo) {
              return _FeatureGridItem(featurePhoto: photo);//Feature(photo);
            }).toList()
        )
    );
  }
}

class _FeaturePhoto{
  _FeaturePhoto({
    this.imageURL,
    this.title,
    this.subtitle,
    this.featureString
  });
  final String imageURL;
  final String title;
  final String subtitle;
  final String featureString;
}

class _FeatureText extends StatelessWidget {
  const _FeatureText(this.text, this.fontSize);
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14),
      child: Text(text,
          style: TextStyle(fontFamily: 'ConcertOne-Regular',
              fontSize: fontSize)),
    );
  }
}

class _FeatureGridItem extends StatelessWidget {
  _FeatureGridItem({
    Key key,
    @required this.featurePhoto
  }) : super ( key: key);

  final _FeaturePhoto featurePhoto;
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              children: <Widget>[
                Image.network(featurePhoto.imageURL,
                    width: 230,
                    height: 230,
                    fit: BoxFit.cover),
                Positioned(
                    top: 16,
                    left: 140,
                    child: Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: Colors.black,//Color(0xff0F0F0F),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                            )
                          ]
                      ),
                      child: Center(
                        child: Text( featurePhoto.featureString,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                )
              ],
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          _FeatureText(featurePhoto.title,16),
          _FeatureText(featurePhoto.subtitle,12),
        ]
    );
  }

}