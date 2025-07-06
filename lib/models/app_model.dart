class AppModel {
  final String id;
  final String name;
  final String description;
  final DateTime createdAt;

  AppModel({
    required this.id,
    required this.name,
    required this.description,
    required this.createdAt,
  });

  factory AppModel.fromJson(Map<String, dynamic> json) {
    return AppModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
