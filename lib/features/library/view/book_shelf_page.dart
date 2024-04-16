import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookShelfPage extends StatelessWidget {
  const BookShelfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BooksShelfView();
  }
}

class BooksShelfView extends StatefulWidget {
  const BooksShelfView({super.key});

  @override
  State<BooksShelfView> createState() => _BooksShelfViewState();
}

class _BooksShelfViewState extends State<BooksShelfView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
