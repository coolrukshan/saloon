import 'package:flutter/material.dart';import 'package:saloonnew/core/app_export.dart';import 'package:saloonnew/presentation/b5_page/b5_page.dart';import 'package:saloonnew/presentation/c3_page/c3_page.dart';import 'package:saloonnew/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class CContainerScreen extends StatelessWidget {CContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.c3Page, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Icchat: return AppRoutes.c3Page; case BottomBarEnum.Icappointment: return AppRoutes.b5Page; case BottomBarEnum.Icprofile: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.c3Page: return C3Page(); case AppRoutes.b5Page: return B5Page(); default: return DefaultWidget();} } 
 }
