import 'package:flutter/material.dart';
import 'package:tourism_app/models/tourism.dart';

class BookmarkIconWidget extends StatefulWidget {
  final Tourism tourism;

  const BookmarkIconWidget({super.key, required this.tourism});

  @override
  State<BookmarkIconWidget> createState() => _BookmarkIconWidgetState();
}

class _BookmarkIconWidgetState extends State<BookmarkIconWidget> {
  late bool _isBookmarked;

  @override
  void initState() {
    final tourismInList = bookMarkTourismList.where(
      (element) => element.id == widget.tourism.id,
    );
    setState(() {
      if (tourismInList.isNotEmpty) {
        _isBookmarked = true;
      } else {
        _isBookmarked = false;
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          if (_isBookmarked) {
            bookMarkTourismList.removeWhere(
              (element) => element.id == widget.tourism.id,
            );
          } else {
            bookMarkTourismList.add(widget.tourism);
          }
          _isBookmarked = !_isBookmarked;
        });
      },
      icon: Icon(_isBookmarked ? Icons.bookmark : Icons.bookmark_outline),
    );
  }
}
