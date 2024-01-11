import 'package:internet_image/constants/enum.dart';
import 'package:internet_image/constants/image_url.dart';
import 'package:internet_image/data/model.dart';

final statusToDisplay = {
  TypeOfConnection.mobile:
      SingleStatus(networkStatus: "Mobile Data", imageURL: mobileImage),
  TypeOfConnection.wifi:
      SingleStatus(networkStatus: "Wifi", imageURL: wifiImage),
  TypeOfConnection.none:
      SingleStatus(networkStatus: "No connection", imageURL: noConnectionImage),
};
