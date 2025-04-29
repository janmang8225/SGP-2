import '../database.dart';

class OrderTableTable extends SupabaseTable<OrderTableRow> {
  @override
  String get tableName => 'orderTable';

  @override
  OrderTableRow createRow(Map<String, dynamic> data) => OrderTableRow(data);
}

class OrderTableRow extends SupabaseDataRow {
  OrderTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  List<String> get items => getListField<String>('items')!;
  set items(List<String> value) => setListField<String>('items', value);

  List<int> get quantities => getListField<int>('quantities')!;
  set quantities(List<int> value) => setListField<int>('quantities', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userID => getField<String>('userID')!;
  set userID(String value) => setField<String>('userID', value);

  String? get personName => getField<String>('personName');
  set personName(String? value) => setField<String>('personName', value);
}
