
class ContentModel {
  String? name;
  String? file;

  ContentModel({
    this.name,
    this.file
  });

  ContentModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    file = json['file'];
  }
}