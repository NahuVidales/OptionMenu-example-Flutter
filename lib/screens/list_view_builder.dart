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
  bool isLoading = false;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
     // log(
       // ' ${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent} ',
     // );
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
       // add5();
       fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future<dynamic>.delayed(const Duration(seconds: 3));

    add5();

    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    await scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  
  void add5() {
    final lastId = imagesId.last;
    imagesId.addAll(
      [1, 2, 3, 4, 5].map((e) => lastId + e),
    );
    setState(() {});
  }


  Future<void> onRefresh() async { 
    await Future<dynamic>.delayed(const Duration(seconds: 3));
    final lastId = imagesId.last;
    print(imagesId);
    imagesId..clear()
    ..add(lastId + 1);
    print(imagesId);
    add5();
    print(imagesId);
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
            RefreshIndicator(
              onRefresh: onRefresh, 
              child: ListView.builder(
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
                      'https://picsum.photos/500/300?image=${imagesId[index]}',
                    ),
                    width: double.infinity,
                    height: 300,
                  );
                },
              ),
            ),
            if (isLoading)
              Positioned(
                bottom: 40,
                left: size.width * 0.5 - 30,
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
      child: const CircularProgressIndicator(color: AppTheme.primary),
    );
  }
}
