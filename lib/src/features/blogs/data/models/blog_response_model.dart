class BlogResponseModel {
  final List<Datum> data;
  final Links links;
  final Meta meta;

  BlogResponseModel({
    required this.data,
    required this.links,
    required this.meta,
  });

  factory BlogResponseModel.fromJson(Map<String, dynamic> json) =>
      BlogResponseModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        links: Links.fromJson(json["links"]),
        meta: Meta.fromJson(json["meta"]),
      );
}

class Datum {
  final int id;
  final String title;
  final String slug;
  final String description;
  final String createdAt;
  final String metaTitle;
  final String metaKeywords;
  final String metaDescription;
  final Category category;
  final Features thumbnails;
  final Features features;
  final List<String> tags;
  final Admin admin;
  final bool isFeatured;

  Datum({
    required this.id,
    required this.title,
    required this.slug,
    required this.description,
    required this.createdAt,
    required this.metaTitle,
    required this.metaKeywords,
    required this.metaDescription,
    required this.category,
    required this.thumbnails,
    required this.features,
    required this.tags,
    required this.admin,
    required this.isFeatured,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        slug: json["slug"],
        description: json["description"],
        createdAt: json["created_at"],
        metaTitle: json["meta_title"],
        metaKeywords: json["meta_keywords"],
        metaDescription: json["meta_description"],
        category: Category.fromJson(json["category"]),
        thumbnails: Features.fromJson(json["thumbnails"]),
        features: Features.fromJson(json["features"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
        admin: Admin.fromJson(json["admin"]),
        isFeatured: json["is_featured"],
      );
}

class Admin {
  final String name;
  final dynamic symbol;
  final int id;

  Admin({
    required this.name,
    required this.symbol,
    required this.id,
  });

  factory Admin.fromJson(Map<String, dynamic> json) => Admin(
        name: json["name"],
        symbol: json["symbol"],
        id: json["id"],
      );
}

class Category {
  final int id;
  final String name;
  final String slug;
  final String description;
  final dynamic extras;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic deletedAt;

  Category({
    required this.id,
    required this.name,
    required this.slug,
    required this.description,
    required this.extras,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        description: json["description"],
        extras: json["extras"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );
}

class Features {
  final String path;
  final dynamic variant;
  final dynamic variantName;
  final String filename;
  final String? m;
  final String o;
  final int size;
  final Extension extension;
  final int id;
  final AggregateType aggregateType;
  final int duration;

  Features({
    required this.path,
    required this.variant,
    required this.variantName,
    required this.filename,
    required this.m,
    required this.o,
    required this.size,
    required this.extension,
    required this.id,
    required this.aggregateType,
    required this.duration,
  });

  factory Features.fromJson(Map<String, dynamic> json) => Features(
        path: json["path"],
        variant: json["variant"],
        variantName: json["variant_name"],
        filename: json["filename"],
        m: json["m"],
        o: json["o"],
        size: json["size"],
        extension: extensionValues.map[json["extension"]]!,
        id: json["id"],
        aggregateType: aggregateTypeValues.map[json["aggregate_type"]]!,
        duration: json["duration"],
      );
}

enum AggregateType { IMAGE }

final aggregateTypeValues = EnumValues({"image": AggregateType.IMAGE});

enum Extension { JPG, PNG }

final extensionValues =
    EnumValues({"jpg": Extension.JPG, "png": Extension.PNG});

class Links {
  final String first;
  final String last;
  final dynamic prev;
  final dynamic next;

  Links({
    required this.first,
    required this.last,
    required this.prev,
    required this.next,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        first: json["first"],
        last: json["last"],
        prev: json["prev"],
        next: json["next"],
      );
}

class Meta {
  final int currentPage;
  final int from;
  final int lastPage;
  final List<Link> links;
  final String path;
  final int perPage;
  final int to;
  final int total;

  Meta({
    required this.currentPage,
    required this.from,
    required this.lastPage,
    required this.links,
    required this.path,
    required this.perPage,
    required this.to,
    required this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        currentPage: json["current_page"],
        from: json["from"],
        lastPage: json["last_page"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        path: json["path"],
        perPage: json["per_page"],
        to: json["to"],
        total: json["total"],
      );
}

class Link {
  final String? url;
  final String label;
  final bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        active: json["active"],
      );
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
