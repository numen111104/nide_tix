import 'dart:convert';

class HomeImageAssets {
    final bool success;
    final String message;
    final List<String> data;

    HomeImageAssets({
        required this.success,
        required this.message,
        required this.data,
    });

    factory HomeImageAssets.fromJson(String str) => HomeImageAssets.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory HomeImageAssets.fromMap(Map<String, dynamic> json) => HomeImageAssets(
        success: json["success"],
        message: json["message"],
        data: List<String>.from(json["data"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x)),
    };
}
