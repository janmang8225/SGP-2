import '../database.dart';

class CartTable extends SupabaseTable<CartRow> {
  @override
  String get tableName => 'cart';

  @override
  CartRow createRow(Map<String, dynamic> data) => CartRow(data);
}

class CartRow extends SupabaseDataRow {
  CartRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get itemName => getField<String>('itemName')!;
  set itemName(String value) => setField<String>('itemName', value);

  String? get itemDesc => getField<String>('itemDesc');
  set itemDesc(String? value) => setField<String>('itemDesc', value);

  int? get itemQuantity => getField<int>('itemQuantity');
  set itemQuantity(int? value) => setField<int>('itemQuantity', value);

  double? get itemPrice => getField<double>('itemPrice');
  set itemPrice(double? value) => setField<double>('itemPrice', value);

  String? get itemImageUrl => getField<String>('itemImageUrl');
  set itemImageUrl(String? value) => setField<String>('itemImageUrl', value);

  String? get userID => getField<String>('userID');
  set userID(String? value) => setField<String>('userID', value);
}
