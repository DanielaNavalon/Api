class ArteModel {
  int id;
  String? title;
  String? thumbnail;
  String? altText;
  int? dateStart;
  int? dateEnd;
  String? artistDisplay;

  ArteModel({
  required this.id,
  this.title,
  this.thumbnail,
  this.altText,
  this.dateStart,
  this.dateEnd,
  this.artistDisplay});

  factory ArteModel.fromMapJson(Map<String,dynamic> obra) =>
    ArteModel(
      id: obra["id"],
      title: obra["title"],
      thumbnail: obra["thumbnail"],
      altText: obra["alt_text"],
      dateStart: obra["date_start"],
      dateEnd: obra["date_end"],
      artistDisplay: obra["artist_display"],
    );
  
} 
  
