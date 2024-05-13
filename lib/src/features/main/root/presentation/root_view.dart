import 'package:auto_route/auto_route.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/features/main/root/presentation/drawer_view.dart';
import 'package:find_football/src/features/main/root/widgets/custom_searchbar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  late TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int _page = 1;
    bool isInitialPage = true;
    return AutoTabsRouter(
      homeIndex: 1,
      routes: const [
        HistoryView(),
        HomeView(),
        FavoriteView(),
      ],
      transitionBuilder: (context, child, animation) {
        final _tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          backgroundColor: const Color(0xFF252525),
          drawer: Drawer(
            // surfaceTintColor: Colors,

            backgroundColor: Colors.black.withOpacity(0.9),
            child: const DrawerView(
              userName: 'Jaxongir',
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomSearchBar(
                  controller: _searchController,
                  hintText: 'Search...',
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.7),
                ),
                Container(
                  height: 45,
                  width: 45,
                  // color: Colors.grey,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Image.asset(
                        AppIcons.filterIcon,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: Colors.green,
            color: Colors.green,
            index: isInitialPage ? 1 :  _tabsRouter.activeIndex,
            animationDuration: const Duration(milliseconds: 300),
            items:  [
              CurvedNavigationBarItem(
                child: const Icon(
                  Icons.history,
                  size: 26,
                  color: Colors.white,
                ),
                label: 'History',
                labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
              ),
              CurvedNavigationBarItem(
                child: const Icon(
                  Icons.home,
                  size: 26,
                  color: Colors.white,
                ),
                label: 'Home',
                labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
              ),
              CurvedNavigationBarItem(
                child: const Icon(
                  Icons.bookmark,
                  size: 26,
                  color: Colors.white,
                ),
                label: 'Favourite',
                labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
              ),
            ],
            onTap: (index) {
              _tabsRouter.setActiveIndex(index);
              setState(() {
                _page = index;
                isInitialPage = false;
              });
            },
          ),
        );
      },
    );
  }
}
