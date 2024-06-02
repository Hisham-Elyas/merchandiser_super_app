import 'dart:convert';
import 'dart:io';

class OfferModel {
  final String? product;
  final String? price;
  final String? details;
  final File? imgFile;
  final String? sheif;
  final String? category;

  OfferModel({
    this.product,
    this.price,
    this.details,
    this.imgFile,
    this.sheif,
    this.category,
  });

  OfferModel copyWith({
    String? product,
    String? price,
    String? details,
    File? imgFile,
    String? sheif,
    String? category,
  }) {
    return OfferModel(
      product: product ?? this.product,
      price: price ?? this.price,
      details: details ?? this.details,
      imgFile: imgFile ?? this.imgFile,
      sheif: sheif ?? this.sheif,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'product': product,
      'price': price,
      'details': details,
      'imgFile': imgFile,
      'sheif': sheif,
      'category': category,
    };
  }

  factory OfferModel.fromMap(Map<String, dynamic> map) {
    return OfferModel(
      product: map['product'] != null ? map['product'] as String : null,
      price: map['price'] != null ? map['price'] as String : null,
      details: map['details'] != null ? map['details'] as String : null,
      imgFile: map['imgFile'] != null ? File(map['imgFile']) : null,
      sheif: map['sheif'] != null ? map['sheif'] as String : null,
      category: map['category'] != null ? map['category'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory OfferModel.fromJson(String source) =>
      OfferModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OfferModel(product: $product, price: $price, details: $details, imgFile: $imgFile, sheif: $sheif, category: $category)';
  }

  @override
  bool operator ==(covariant OfferModel other) {
    if (identical(this, other)) return true;

    return other.product == product &&
        other.price == price &&
        other.details == details &&
        other.imgFile == imgFile &&
        other.sheif == sheif &&
        other.category == category;
  }

  @override
  int get hashCode {
    return product.hashCode ^
        price.hashCode ^
        details.hashCode ^
        imgFile.hashCode ^
        sheif.hashCode ^
        category.hashCode;
  }
}
