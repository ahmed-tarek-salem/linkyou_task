class PaginationRequestModel {
  final int? page;
  final int? perPage = 10;

  PaginationRequestModel({this.page});

  Map<String, dynamic> toJson() => {"page": page, "per_page": perPage};
}
