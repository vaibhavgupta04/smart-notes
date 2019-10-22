import 'package:app_data/src/local/database/models/models.dart';
import 'package:app_data/src/local/database/repositories/base/base_repository.dart';

class TagsRepository extends BaseRepository<Tags, TagDataObject> {
  TagsRepository(ENotesDatabase db) : super(db);

  Stream<List<TagDataObject>> watchOwnedTags(String ownedBy) =>
      (select(table)..where((t) => t.ownedBy.equals(ownedBy))).watch();
}
