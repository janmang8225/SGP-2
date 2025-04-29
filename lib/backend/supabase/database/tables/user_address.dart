import '../database.dart';

class UserAddressTable extends SupabaseTable<UserAddressRow> {
  @override
  String get tableName => 'userAddress';

  @override
  UserAddressRow createRow(Map<String, dynamic> data) => UserAddressRow(data);
}

class UserAddressRow extends SupabaseDataRow {
  UserAddressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserAddressTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);
}
