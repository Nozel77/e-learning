import 'dart:convert';

LearningResponseModels learningResponseModelsFromJson(String str) => LearningResponseModels.fromJson(json.decode(str));
String learningResponseModelsToJson(LearningResponseModels data) => json.encode(data.toJson());

class LearningResponseModels {
    bool status;
    String message;
    List<Learning> data;

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
        data: List<Learning>.from(json["data"].map((x) => Learning.fromJson(x))),
    );
    

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
    
}

class Learning {
    int id;
    String title;
    String instructor;
    int price;
    String description;
    DateTime createdAt;
    DateTime updatedAt;

    Learning({
        required this.id,
        required this.title,
        required this.instructor,
        required this.price,
        required this.description,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Learning.fromRawJson(String str) => Learning.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Learning.fromJson(Map<String, dynamic> json) => Learning(
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
