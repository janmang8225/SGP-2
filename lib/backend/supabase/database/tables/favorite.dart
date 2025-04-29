import '../database.dart';

class FavoriteTable extends SupabaseTable<FavoriteRow> {
  @override
  String get tableName => 'favorite';

  @override
  FavoriteRow createRow(Map<String, dynamic> data) => FavoriteRow(data);
}

class FavoriteRow extends SupabaseDataRow {
  FavoriteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FavoriteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userID => getField<String>('user_ID');
  set userID(String? value) => setField<String>('user_ID', value);

  int? get itemID => getField<int>('item_ID');
  set itemID(int? value) => setField<int>('item_ID', value);
}
