import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:blurhash/blurhash.dart';

class BlurHashImage extends StatefulWidget {
  BlurHashImage(
      {Key key,
      @required this.blurHash,
      @required this.image,
      this.width,
      this.height,
      this.fit = BoxFit.cover})
      : super(key: key);

  final String blurHash;
  final String image;
  final double width;
  final double height;
  final BoxFit fit;

  _BlurHashImageState createState() => _BlurHashImageState();
}

class _BlurHashImageState extends State<BlurHashImage> {
  Uint8List _imageDataBytes;

  @override
  void initState() {
    super.initState();
    blurHashDecode();
  }

  Future blurHashDecode() async {
    Uint8List imageDataBytes;

    try {
      imageDataBytes = await BlurHash.decode(widget.blurHash, 32, 32);
    } on PlatformException catch (e) {
      print(e.message);
    }

    setState(() {
      _imageDataBytes = imageDataBytes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _imageDataBytes == null
        ? Container(width: widget.width, height: widget.height)
        : Align(
            alignment: Alignment.center,
            child: Stack(
              children: <Widget>[
                FractionallySizedBox(
                  widthFactor: 1,
                  child: FadeInImage.memoryNetwork(
                    placeholder: _imageDataBytes,
                    image: widget.image,
                    fit: widget.fit,
                  ),
                ),
                Positioned(
                    top: 5.0,
                    right: 5.0,
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15.0,
                          child: Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        ))),
              ],
            ),
          );
  }
}
