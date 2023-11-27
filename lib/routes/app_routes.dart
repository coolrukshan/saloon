import 'package:flutter/material.dart';
import 'package:saloonnew/presentation/a_screen/a_screen.dart';
import 'package:saloonnew/presentation/b_screen/b_screen.dart';
import 'package:saloonnew/presentation/c_screen/c_screen.dart';
import 'package:saloonnew/presentation/d_screen/d_screen.dart';
import 'package:saloonnew/presentation/e_screen/e_screen.dart';
import 'package:saloonnew/presentation/a1_screen/a1_screen.dart';
import 'package:saloonnew/presentation/b1_screen/b1_screen.dart';
import 'package:saloonnew/presentation/a2_screen/a2_screen.dart';
import 'package:saloonnew/presentation/b2_screen/b2_screen.dart';
import 'package:saloonnew/presentation/c1_screen/c1_screen.dart';
import 'package:saloonnew/presentation/d1_screen/d1_screen.dart';
import 'package:saloonnew/presentation/e1_screen/e1_screen.dart';
import 'package:saloonnew/presentation/a3_screen/a3_screen.dart';
import 'package:saloonnew/presentation/b3_screen/b3_screen.dart';
import 'package:saloonnew/presentation/c2_screen/c2_screen.dart';
import 'package:saloonnew/presentation/a4_screen/a4_screen.dart';
import 'package:saloonnew/presentation/b4_screen/b4_screen.dart';
import 'package:saloonnew/presentation/c_container_screen/c_container_screen.dart';
import 'package:saloonnew/presentation/d3_screen/d3_screen.dart';
import 'package:saloonnew/presentation/e2_screen/e2_screen.dart';
import 'package:saloonnew/presentation/f1_screen/f1_screen.dart';
import 'package:saloonnew/presentation/g_screen/g_screen.dart';
import 'package:saloonnew/presentation/h_screen/h_screen.dart';
import 'package:saloonnew/presentation/j_tab_container_screen/j_tab_container_screen.dart';
import 'package:saloonnew/presentation/a5_screen/a5_screen.dart';
import 'package:saloonnew/presentation/a6_screen/a6_screen.dart';
import 'package:saloonnew/presentation/b6_screen/b6_screen.dart';
import 'package:saloonnew/presentation/a7_screen/a7_screen.dart';
import 'package:saloonnew/presentation/b7_screen/b7_screen.dart';
import 'package:saloonnew/presentation/c4_screen/c4_screen.dart';
import 'package:saloonnew/presentation/d4_screen/d4_screen.dart';
import 'package:saloonnew/presentation/e3_screen/e3_screen.dart';
import 'package:saloonnew/presentation/f2_screen/f2_screen.dart';
import 'package:saloonnew/presentation/g1_screen/g1_screen.dart';
import 'package:saloonnew/presentation/h1_screen/h1_screen.dart';
import 'package:saloonnew/presentation/i1_screen/i1_screen.dart';
import 'package:saloonnew/presentation/a_tab_container_screen/a_tab_container_screen.dart';
import 'package:saloonnew/presentation/d5_screen/d5_screen.dart';
import 'package:saloonnew/presentation/a9_screen/a9_screen.dart';
import 'package:saloonnew/presentation/c6_screen/c6_screen.dart';
import 'package:saloonnew/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String aScreen = '/a_screen';

  static const String bScreen = '/b_screen';

  static const String cScreen = '/c_screen';

  static const String dScreen = '/d_screen';

  static const String eScreen = '/e_screen';

  static const String a1Screen = '/a1_screen';

  static const String b1Screen = '/b1_screen';

  static const String a2Screen = '/a2_screen';

  static const String b2Screen = '/b2_screen';

  static const String c1Screen = '/c1_screen';

  static const String d1Screen = '/d1_screen';

  static const String e1Screen = '/e1_screen';

  static const String a3Screen = '/a3_screen';

  static const String b3Screen = '/b3_screen';

  static const String c2Screen = '/c2_screen';

  static const String a4Screen = '/a4_screen';

  static const String b4Screen = '/b4_screen';

  static const String c3Page = '/c3_page';

  static const String cContainerScreen = '/c_container_screen';

  static const String d3Screen = '/d3_screen';

  static const String e2Screen = '/e2_screen';

  static const String f1Screen = '/f1_screen';

  static const String gScreen = '/g_screen';

  static const String hScreen = '/h_screen';

  static const String iPage = '/i_page';

  static const String jPage = '/j_page';

  static const String jTabContainerScreen = '/j_tab_container_screen';

  static const String a5Screen = '/a5_screen';

  static const String b5Page = '/b5_page';

  static const String a6Screen = '/a6_screen';

  static const String b6Screen = '/b6_screen';

  static const String a7Screen = '/a7_screen';

  static const String b7Screen = '/b7_screen';

  static const String c4Screen = '/c4_screen';

  static const String d4Screen = '/d4_screen';

  static const String e3Screen = '/e3_screen';

  static const String f2Screen = '/f2_screen';

  static const String g1Screen = '/g1_screen';

  static const String h1Screen = '/h1_screen';

  static const String i1Screen = '/i1_screen';

  static const String a8Page = '/a8_page';

  static const String aTabContainerScreen = '/a_tab_container_screen';

  static const String d5Screen = '/d5_screen';

  static const String a9Screen = '/a9_screen';

  static const String c6Screen = '/c6_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    aScreen: (context) => AScreen(),
    bScreen: (context) => BScreen(),
    cScreen: (context) => CScreen(),
    dScreen: (context) => DScreen(),
    eScreen: (context) => EScreen(),
    a1Screen: (context) => A1Screen(),
    b1Screen: (context) => B1Screen(),
    a2Screen: (context) => A2Screen(),
    b2Screen: (context) => B2Screen(),
    c1Screen: (context) => C1Screen(),
    d1Screen: (context) => D1Screen(),
    e1Screen: (context) => E1Screen(),
    a3Screen: (context) => A3Screen(),
    b3Screen: (context) => B3Screen(),
    c2Screen: (context) => C2Screen(),
    a4Screen: (context) => A4Screen(),
    b4Screen: (context) => B4Screen(),
    cContainerScreen: (context) => CContainerScreen(),
    d3Screen: (context) => D3Screen(),
    e2Screen: (context) => E2Screen(),
    f1Screen: (context) => F1Screen(),
    gScreen: (context) => GScreen(),
    hScreen: (context) => HScreen(),
    jTabContainerScreen: (context) => JTabContainerScreen(),
    a5Screen: (context) => A5Screen(),
    a6Screen: (context) => A6Screen(),
    b6Screen: (context) => B6Screen(),
    a7Screen: (context) => A7Screen(),
    b7Screen: (context) => B7Screen(),
    c4Screen: (context) => C4Screen(),
    d4Screen: (context) => D4Screen(),
    e3Screen: (context) => E3Screen(),
    f2Screen: (context) => F2Screen(),
    g1Screen: (context) => G1Screen(),
    h1Screen: (context) => H1Screen(),
    i1Screen: (context) => I1Screen(),
    aTabContainerScreen: (context) => ATabContainerScreen(),
    d5Screen: (context) => D5Screen(),
    a9Screen: (context) => A9Screen(),
    c6Screen: (context) => C6Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
