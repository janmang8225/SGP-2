import '../database.dart';

class ProductTableTable extends SupabaseTable<ProductTableRow> {
  @override
  String get tableName => 'productTable';

  @override
  ProductTableRow createRow(Map<String, dynamic> data) => ProductTableRow(data);
}

class ProductTableRow extends SupabaseDataRow {
  ProductTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductTableTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get productName => getField<String>('productName')!;
  set productName(String value) => setField<String>('productName', value);

  String? get productCategory => getField<String>('productCategory');
  set productCategory(String? value) =>
      setField<String>('productCategory', value);

  double? get productPrice => getField<double>('productPrice');
  set productPrice(double? value) => setField<double>('productPrice', value);

  bool? get productAvailability => getField<bool>('productAvailability');
  set productAvailability(bool? value) =>
      setField<bool>('productAvailability', value);

  String? get productUrl => getField<String>('productUrl');
  set productUrl(String? value) => setField<String>('productUrl', value);

  String? get productDesc => getField<String>('productDesc');
  set productDesc(String? value) => setField<String>('productDesc', value);
}
