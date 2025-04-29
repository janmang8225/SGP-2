import '../database.dart';

class ItemsTableTable extends SupabaseTable<ItemsTableRow> {
  @override
  String get tableName => 'itemsTable';

  @override
  ItemsTableRow createRow(Map<String, dynamic> data) => ItemsTableRow(data);
}

class ItemsTableRow extends SupabaseDataRow {
  ItemsTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItemsTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get itemName => getField<String>('item_name')!;
  set itemName(String value) => setField<String>('item_name', value);

  String? get itemDesc => getField<String>('item_desc');
  set itemDesc(String? value) => setField<String>('item_desc', value);

  double get itemPrice => getField<double>('item_price')!;
  set itemPrice(double value) => setField<double>('item_price', value);

  String? get itemImgUrl => getField<String>('item_imgUrl');
  set itemImgUrl(String? value) => setField<String>('item_imgUrl', value);

  String? get itemCategory => getField<String>('item_category');
  set itemCategory(String? value) => setField<String>('item_category', value);
}
