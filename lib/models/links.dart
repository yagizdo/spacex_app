import 'patch.dart';

class Links {
  Patch? patch;
  String? webcast;
  String? youtubeId;
  String? article;
  String? wikipedia;

  Links(
      {this.patch, this.webcast, this.youtubeId, this.article, this.wikipedia});

  Links.fromJson(Map<String, dynamic> json) {
    patch = json['patch'] != null ? new Patch.fromJson(json['patch']) : null;
    webcast = json['webcast'];
    youtubeId = json['youtube_id'];
    article = json['article'];
    wikipedia = json['wikipedia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.patch != null) {
      data['patch'] = this.patch!.toJson();
    }
    data['webcast'] = this.webcast;
    data['youtube_id'] = this.youtubeId;
    data['article'] = this.article;
    data['wikipedia'] = this.wikipedia;
    return data;
  }
}
