
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
 
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      log(' ${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent} ',);
      if ( (scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent ) {
        add5();
      }
    });
  }

  void add5() {
    final lastId = imagesId.last;
    imagesId.addAll(
      [1, 2, 3, 4, 5].map((e) => lastId + e),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
       return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        removeTop: true,
        child: Stack(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              itemCount: imagesId.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return FadeInImage(
                  fit: BoxFit.cover,
                  placeholder: const AssetImage('assets/loading-cargando.gif'),
                  image: NetworkImage(
                      'https://picsum.photos/500/300?image=${imagesId[index]}',),
                  width: double.infinity,
                  height: 300,
                );
              },
            ),
            Positioned(
            bottom: 40,
            left: size.width * 0.5 - 30 ,
            child: LoadingIcon(),
              
            )
              
          ],
        ),
      ),
    );
  }
}

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(color: AppTheme.primary),);
  }
}
