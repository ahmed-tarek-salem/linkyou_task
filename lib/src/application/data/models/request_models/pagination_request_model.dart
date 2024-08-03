class PaginationRequestModel {
  final int? page;

  PaginationRequestModel({this.page});

  Map<String, dynamic> toJson() => {
        "page": page,
      };
}
