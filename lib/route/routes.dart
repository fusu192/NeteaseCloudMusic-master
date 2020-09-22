import 'package:fluro/fluro.dart' as x;
import 'package:flutter/material.dart';
import 'package:fluttertest/pages/login_page.dart';
import 'package:fluttertest/route/route_handles.dart';

class Routes {
  static String root = "/";
  static String home = "/home";
  static String login = "/login";
  static String dailySongs = "/daily_songs";
  static String playList = "/play_list";
  static String topList = "/top_list";
  static String playSongs = "/play_songs";
  static String comment = "/comment";
  static String search = "/search";
  static String lookImg = "/look_img";
  static String userDetail = "/user_detail";

  static void configureRoutes(x.Router router) {
    router.notFoundHandler = new x.Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return LoginPage();
    });
    router.define(root, handler: splashHandler);
    router.define(login, handler: loginHandler);
    router.define(home, handler: homeHandler);
    router.define(dailySongs, handler: dailySongsHandler);
    router.define(playList, handler: playListHandler);
    router.define(topList, handler: topListHandler);
    router.define(playSongs, handler: playSongsHandler);
    router.define(comment, handler: commentHandler);
    router.define(search, handler: searchHandler);
    router.define(lookImg, handler: lookImgHandler);
    router.define(userDetail, handler: userDetailHandler);
  }
}
