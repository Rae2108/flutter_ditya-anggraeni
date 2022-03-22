import 'package:emojis/emojis.dart';
import 'package:intl/intl.dart';

class ChatModel{
  final String name;
  final String message;
  final String time;
  final String profile;

  ChatModel({required this.name, required this.message, required this.time, required this.profile});
}
  final List<ChatModel> itemsChat = [
    ChatModel(
      name: "Rae", 
      message: "Heloo gaiss", 
      time: DateFormat().add_jm().format(DateTime.now()), 
      profile: "https://f4.bcbits.com/img/a4227575367_10.jpg"),ChatModel(
      name: "Dita", 
      message: Emojis.nerdFace, 
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://uploadstatic-sea.mihoyo.com/strategyweb/20200906/2020090609442633360.jpg"),
  ChatModel(
      name: "Delpa", 
      message: Emojis.faceExhaling, 
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://64.media.tumblr.com/a32a953233ce5f86fcabdd75b57a14f3/29dbbe188a40e00f-84/s400x600/28c8e6589d24ab86f06f5db0b3dd44a29b55a26b.jpg"),
  ChatModel(
      name: "jihand", 
      message: Emojis.faceInClouds, 
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://i.ytimg.com/vi/CjuVZ0Z4E9U/maxresdefault.jpg"),
  ChatModel(
      name: "emel", 
      message: Emojis.faceWithTearsOfJoy, 
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://i.pinimg.com/474x/c2/8d/c8/c28dc8d9c978af0c787a2dc4718e320b.jpg"),
  ChatModel(
      name: "yord", 
      message: Emojis.manFacepalming, 
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://upload-os-bbs.hoyolab.com/upload/2021/07/16/120246777/c708b3502af0b3b43c1d876d4714f3c7_3426524389289503964.png?x-oss-process=image/resize,s_600/quality,q_80/auto-orient,0/interlace,1/format,jpg"),
  ChatModel(
      name: "jewlek", 
      message: Emojis.poutingFace, 
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://upload-os-bbs.hoyolab.com/upload/2021/07/23/10471373/eb247c94dc969b3b9dbd5459d57e7b5c_6089460412520117950.png?x-oss-process=image/resize,s_600/quality,q_80/auto-orient,0/interlace,1/format,jpg"),
  ChatModel(
      name: "Mentul", 
      message: Emojis.clownFace,
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://c.tenor.com/NWtOgCjGi2oAAAAC/einstein-honkai-impact.gif"),
  ];