import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookRequestsPage extends StatelessWidget {
  const BookRequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BookRequestView();
  }
}

class BookRequestView extends StatefulWidget {
  const BookRequestView({super.key});

  @override
  State<BookRequestView> createState() => _BookRequestViewState();
}

class _BookRequestViewState extends State<BookRequestView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
