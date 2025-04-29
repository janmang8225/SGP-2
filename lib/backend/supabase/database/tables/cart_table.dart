import '../database.dart';

class CartTableTable extends SupabaseTable<CartTableRow> {
  @override
  String get tableName => 'cartTable';

  @override
  CartTableRow createRow(Map<String, dynamic> data) => CartTableRow(data);
}

class CartTableRow extends SupabaseDataRow {
  CartTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userID => getField<String>('userID')!;
  set userID(String value) => setField<String>('userID', value);

  String? get productID => getField<String>('productID');
  set productID(String? value) => setField<String>('productID', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  DateTime? get addedTimeStamp => getField<DateTime>('addedTimeStamp');
  set addedTimeStamp(DateTime? value) =>
      setField<DateTime>('addedTimeStamp', value);
}
