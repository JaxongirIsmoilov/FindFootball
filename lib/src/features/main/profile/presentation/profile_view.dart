import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:find_football/src/core/di/di.dart';
import 'package:find_football/src/core/router/router.gr.dart';
import 'package:find_football/src/features/main/profile/data/models/response/profile_success.dart';
import 'package:find_football/src/features/main/profile/presentation/widgets/custom_button_pref.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/models/custom_list_tile.dart';
import 'bloc/profile_bloc.dart';

@RoutePage()
class ProfileView extends StatefulWidget {
  const ProfileView(
      {super.key, required this.profileSuccess, required this.isUserHost});

  final ProfileSuccess profileSuccess;
  final bool isUserHost;

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {


  late BuildContext ctx;
  List<CustomListTile> listTile = [
    CustomListTile(icon: Icons.announcement, title: "My Ads"),
    CustomListTile(icon: CupertinoIcons.settings_solid, title: "Settings"),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(AppIcons.user),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.profileSuccess.name,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor),
                ),
                Text(
                  widget.profileSuccess.phoneNumber,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Divider(
                height: 1,
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: CustomButtonPref(
                color: AppColors.buttonColor,
                text: widget.isUserHost
                    ? "Give ad"
                    : "Request to Admin give ad",
                textColor: AppColors.white,
                onTap: () async {
                  if (widget.isUserHost) {
                    context.pushRoute(AddAdView(isUserHost: widget.isUserHost));
                  } else {
                      di<ProfileBloc>().add(RequestToHostEvent(),);
                  }
                },
                width: double.infinity,
                height: 40,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ...List.generate(
              listTile.length,
                  (index) =>
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Card(
                      elevation: 4,
                      shadowColor: Colors.black12,
                      child: ListTile(
                        title: Text(listTile[index].title,),
                        trailing: const Icon(CupertinoIcons.chevron_right),
                        leading: Icon(listTile[index].icon),
                      ),
                    ),
                  ),
            ),
          ],
        );
      },
    );
  }

}
