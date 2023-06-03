import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuItemsRecord extends FirestoreRecord {
  MenuItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
    _price = snapshotData['price'] as int?;
    _user = snapshotData['user'] as DocumentReference?;
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menu-items');

  static Stream<MenuItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuItemsRecord.fromSnapshot(s));

  static Future<MenuItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuItemsRecord.fromSnapshot(s));

  static MenuItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenuItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuItemsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createMenuItemsRecordData({
  String? image,
  String? name,
  int? price,
  DocumentReference? user,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'name': name,
      'price': price,
      'user': user,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}
