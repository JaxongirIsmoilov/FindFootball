import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text(
            'Game In',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontSize: 20,
                ),
          ),
          currentAccountPicture: const Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              backgroundImage: AssetImage(AppIcons.user),
            ),
          ),
          accountEmail: Text(
            userName,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(AppIcons.drawerImage1),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop)
            ),
          ),
        ),
        InkWell(
          onTap: (){
            context.replaceRoute(LoginView());
          },
          child: ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.grey,
            ),
            title: Text(
              'Log Out',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
        ListTile(
          leading: SizedBox(
            height: 22,
            width: 22,
            child: Image.asset(AppIcons.englishFlag),
          ),
          title: Text(
            'Select Language',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
          trailing: const Icon(Icons.arrow_drop_down),
        ),
      ],
    );
  }
}
