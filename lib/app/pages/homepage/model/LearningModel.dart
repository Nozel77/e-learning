import 'dart:convert';

LearningResponseModels learningResponseModelsFromJson(String str) => LearningResponseModels.fromJson(json.decode(str));
String learningResponseModelsToJson(LearningResponseModels data) => json.encode(data.toJson());

class LearningResponseModels {
    bool status;
    String message;
    List<Datum> data;

    LearningResponseModels({
        required this.status,
        required this.message,
        required this.data,
    });

    factory LearningResponseModels.fromRawJson(String str) => LearningResponseModels.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory LearningResponseModels.fromJson(Map<String, dynamic> json) => LearningResponseModels(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    String title;
    String instructor;
    int price;
    String description;
    DateTime createdAt;
    DateTime updatedAt;

    Datum({
        required this.id,
        required this.title,
        required this.instructor,
        required this.price,
        required this.description,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        instructor: json["instructor"],
        price: json["price"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "instructor": instructor,
        "price": price,
        "description": description,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
