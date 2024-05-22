import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/features/main/root/data/models/all_ads_item.dart';
import 'package:find_football/src/features/main/widgets/ad_card.dart';
import 'package:find_football/src/features/main/widgets/ads_item.dart';
import 'package:flutter/material.dart';
@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 10, itemBuilder: (ctx, index) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: AdCard(imgUrl: 'https://images.unsplash.com/photo-1522778119026-d647f0596c20?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', title: 'Amazing Stadium', location: 'City, Country', onClick: (){ctx.pushRoute(ItemDetailsView());},),
      // child: AdsItem(allAdsItem: AllAdsItem(title: 'СПОРТИВНЫЙ КОМПЛЕКС PARK ARENA - большое поле 44Х50', rating: 4, season: 'Yozgi poliya', landmark: 'Псковская область, город Дорохово', price: '1 200.000'), onClick: (){ctx.pushRoute(ItemDetailsView());},),
    ),);
  }
}
