import '../database.dart';

class UserCartTotalPriceTable extends SupabaseTable<UserCartTotalPriceRow> {
  @override
  String get tableName => 'userCartTotalPrice';

  @override
  UserCartTotalPriceRow createRow(Map<String, dynamic> data) =>
      UserCartTotalPriceRow(data);
}

class UserCartTotalPriceRow extends SupabaseDataRow {
  UserCartTotalPriceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserCartTotalPriceTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  double get totalPrice => getField<double>('totalPrice')!;
  set totalPrice(double value) => setField<double>('totalPrice', value);
}
