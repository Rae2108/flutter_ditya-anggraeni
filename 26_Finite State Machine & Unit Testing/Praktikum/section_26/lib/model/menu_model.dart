class Menu {
  int? id;
  String menu;
  Menu({this.id, required this.menu});

  factory Menu.fromJson(Map<String, dynamic> json) =>
      Menu(id: json['id'], menu: json['menu']);

  Map<String, dynamic> toJson() => {'id': id, 'menu': menu};
}
