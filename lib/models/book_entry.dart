// To parse this JSON data, do
//
//     final bookEntry = bookEntryFromJson(jsonString);

import 'dart:convert';

List<BookEntry> bookEntryFromJson(String str) => List<BookEntry>.from(json.decode(str).map((x) => BookEntry.fromJson(x)));

String bookEntryToJson(List<BookEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BookEntry {
    String model;
    String pk;
    Fields fields;

    BookEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory BookEntry.fromJson(Map<String, dynamic> json) => BookEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    int quantity;
    String category;
    String isbn13;
    String isbn10;
    DateTime publishedDate;
    int pages;
    String language;
    String weight;
    String ratingStar;
    int ratingCount;
    String author;
    DateTime timeAdded;
    ReviewList reviewList;
    String publisher;
    String image;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.quantity,
        required this.category,
        required this.isbn13,
        required this.isbn10,
        required this.publishedDate,
        required this.pages,
        required this.language,
        required this.weight,
        required this.ratingStar,
        required this.ratingCount,
        required this.author,
        required this.timeAdded,
        required this.reviewList,
        required this.publisher,
        required this.image,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        quantity: json["quantity"],
        category: json["category"],
        isbn13: json["isbn_13"],
        isbn10: json["isbn_10"],
        publishedDate: DateTime.parse(json["published_date"]),
        pages: json["pages"],
        language: json["language"],
        weight: json["weight"],
        ratingStar: json["rating_star"],
        ratingCount: json["rating_count"],
        author: json["author"],
        timeAdded: DateTime.parse(json["time_added"]),
        reviewList: ReviewList.fromJson(json["review_list"]),
        publisher: json["publisher"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "quantity": quantity,
        "category": category,
        "isbn_13": isbn13,
        "isbn_10": isbn10,
        "published_date": "${publishedDate.year.toString().padLeft(4, '0')}-${publishedDate.month.toString().padLeft(2, '0')}-${publishedDate.day.toString().padLeft(2, '0')}",
        "pages": pages,
        "language": language,
        "weight": weight,
        "rating_star": ratingStar,
        "rating_count": ratingCount,
        "author": author,
        "time_added": timeAdded.toIso8601String(),
        "review_list": reviewList.toJson(),
        "publisher": publisher,
        "image": image,
    };
}

class ReviewList {
    ReviewList();

    factory ReviewList.fromJson(Map<String, dynamic> json) => ReviewList(
    );

    Map<String, dynamic> toJson() => {
    };
}
