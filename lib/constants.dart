import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kSplashScreen = 'splash_screen';
const kStartScreen = 'start_screen';
const kLogin1Screen = 'login1_screen';
const kLogin2Screen = 'login2_screen';
const kForgetPass1Screen = 'forget1_screen';
const kForgetPass2Screen = 'forget2_screen';
const kForgetPass3Screen = 'forget3_screen';
const kCreateAcountScreen = 'create_account_screen';
const kCreateAcountWebScreen = 'create_account_web_screen';
const kCreateAcountReviewScreen = 'create_account_review_screen';
const kAuthenticationScreen = 'authentication_screen';
const kNotRobotScreen = 'not_robot_screen';
const kSignupCodeVerificationScreen = 'signup_code_verification_screen';
const kAddPassScreen = 'add_pass_screen';
const kAddUsernameScreen = 'add_username_screen';
const kAddProfilePicScreen = 'add_profile_pic_screen';
const kWebStartScreen = 'web_start_screen';
const kProfileScreen = 'profile_screen';
const kHomeScreen = 'home_page';
const kAddTweetScreen = 'add_tweet_screen';
const kFollowers = 'followers';
const kFollowing = 'following';
const kSettingsAndPrivacy = 'settings';
const kwebboth = 'bothFollowingsAndFollowers';
const kGreyHoveredColor = Color.fromARGB(50, 158, 158, 158);
const baseURL = 'http://16.171.65.142:3000/api/v1/';
// const baseURl = 'https://eacd-196-153-2-220.ngrok.io/';
const basePhotosURL = 'http://16.171.65.142:3000/';
const kDefaultBannerPhoto = 'https://www.schemecolor.com/wallpaper?i=4334&og';
const kDefaultAvatarPhoto = '${basePhotosURL}uploads/default.png';
const kLikersInProfile="likers screen";
Future<List<String>> loadPrefs() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  var id = prefs.getString('id');
  var token = prefs.getString('token');
  // print('id = $id');
  // print('token = $token');
  return [id!, token!];
}

const kSettings = 'settings_view';
const kAccountinfo = "account_info_view";
