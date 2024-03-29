import 'dart:convert';

class DestinationsModel {
    final bool success;
    final String message;
    final List<Datum> data;

    DestinationsModel({
        required this.success,
        required this.message,
        required this.data,
    });

    factory DestinationsModel.fromJson(String str) => DestinationsModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DestinationsModel.fromMap(Map<String, dynamic> json) => DestinationsModel(
        success: json["success"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
    };
}

class Datum {
    final int id;
    final String name;
    final String description;
    final String location;
    final bool isOpen;
    final String openDays;
    final String openTime;
    final int ticketPrice;
     String imageAsset;
    final List<String> imageUrls;

    Datum({
        required this.id,
        required this.name,
        required this.description,
        required this.location,
        required this.isOpen,
        required this.openDays,
        required this.openTime,
        required this.ticketPrice,
        required this.imageAsset,
        required this.imageUrls,
    });

    factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        location: json["location"],
        isOpen: json["is_open"],
        openDays: json["open_days"],
        openTime: json["open_time"],
        ticketPrice: json["ticket_price"],
        imageAsset: json["image_asset"],
        imageUrls: List<String>.from(json["image_urls"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "location": location,
        "is_open": isOpen,
        "open_days": openDays,
        "open_time": openTime,
        "ticket_price": ticketPrice,
        "image_asset": imageAsset,
        "image_urls": List<dynamic>.from(imageUrls.map((x) => x)),
    };
}
