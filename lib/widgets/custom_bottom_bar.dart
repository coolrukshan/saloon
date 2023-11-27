import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:saloonnew/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIcChat,
      activeIcon: ImageConstant.imgIcChat,
      type: BottomBarEnum.Icchat,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcAppointment,
      activeIcon: ImageConstant.imgIcAppointment,
      type: BottomBarEnum.Icappointment,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcProfile,
      activeIcon: ImageConstant.imgIcProfile,
      type: BottomBarEnum.Icprofile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.8,
          child: SizedBox(
            width: 374.h,
            child: Divider(),
          ),
        ),
        Container(
          height: 83.v,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup247,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 0,
            elevation: 0,
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: List.generate(bottomMenuList.length, (index) {
              return BottomNavigationBarItem(
                icon: CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  color: appTheme.blueGray400,
                ),
                activeIcon: CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 25.v,
                  width: 28.h,
                  color: appTheme.blueGray400,
                ),
                label: '',
              );
            }),
            onTap: (index) {
              selectedIndex = index;
              widget.onChanged?.call(bottomMenuList[index].type);
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}

enum BottomBarEnum {
  Icchat,
  Icappointment,
  Icprofile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
