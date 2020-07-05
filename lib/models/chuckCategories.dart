class chuckCategories {
  final List<String> categories;

  chuckCategories({this.categories});

  factory chuckCategories.fromJson(List<dynamic> json) {
    return chuckCategories(
      categories: json != null ? new List<String>.from(json) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
  
}
