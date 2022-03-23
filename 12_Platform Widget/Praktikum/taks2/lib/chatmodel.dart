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
      message: "Besok ngampus ga?", 
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://cdn-image.hipwee.com/wp-content/uploads/2018/05/hipwee-73346-1.jpg"),
  ChatModel(
      name: "jihand", 
      message: "ke kampus ga?", 
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://asset.kompas.com/crops/HD7pJhzjNDH9W00PnHPd4NFXzeo=/0x0:1000x667/750x500/data/photo/2020/01/31/5e33ec75cccda.jpg"),
  ChatModel(
      name: "emel", 
      message: "Raeee", 
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://www.kotajogja.com/wp-content/uploads/2019/08/sinar.jpg"),
  ChatModel(
      name: "yord", 
      message: "hallo ree", 
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/12/24/422534226.jpg"),
  ChatModel(
      name: "jewlek", 
      message: "gaiss", 
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/intisarifoto/original/52155_senja.jpg"),
  ChatModel(
      name: "Mentul", 
      message: "lagi apa dek",
      time: DateFormat().add_jm().format(DateTime.now()),
      profile: "https://img.okezone.com/content/2021/02/03/612/2355792/ahli-ungkap-rahasia-di-balik-kenikmatan-menatap-langit-senja-UBO99TGPG2.jpg"),
  ];