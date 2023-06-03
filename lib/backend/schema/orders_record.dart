import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "customer_name" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "customer_phone" field.
  String? _customerPhone;
  String get customerPhone => _customerPhone ?? '';
  bool hasCustomerPhone() => _customerPhone != null;

  // "customer_email" field.
  String? _customerEmail;
  String get customerEmail => _customerEmail ?? '';
  bool hasCustomerEmail() => _customerEmail != null;

  // "customer_address" field.
  String? _customerAddress;
  String get customerAddress => _customerAddress ?? '';
  bool hasCustomerAddress() => _customerAddress != null;

  // "order_num" field.
  int? _orderNum;
  int get orderNum => _orderNum ?? 0;
  bool hasOrderNum() => _orderNum != null;

  // "total_price" field.
  int? _totalPrice;
  int get totalPrice => _totalPrice ?? 0;
  bool hasTotalPrice() => _totalPrice != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "item_quantity" field.
  int? _itemQuantity;
  int get itemQuantity => _itemQuantity ?? 0;
  bool hasItemQuantity() => _itemQuantity != null;

  void _initializeFields() {
    _customerName = snapshotData['customer_name'] as String?;
    _customerPhone = snapshotData['customer_phone'] as String?;
    _customerEmail = snapshotData['customer_email'] as String?;
    _customerAddress = snapshotData['customer_address'] as String?;
    _orderNum = snapshotData['order_num'] as int?;
    _totalPrice = snapshotData['total_price'] as int?;
    _user = snapshotData['user'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _itemQuantity = snapshotData['item_quantity'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createOrdersRecordData({
  String? customerName,
  String? customerPhone,
  String? customerEmail,
  String? customerAddress,
  int? orderNum,
  int? totalPrice,
  DocumentReference? user,
  DateTime? createdAt,
  int? itemQuantity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'customer_name': customerName,
      'customer_phone': customerPhone,
      'customer_email': customerEmail,
      'customer_address': customerAddress,
      'order_num': orderNum,
      'total_price': totalPrice,
      'user': user,
      'created_at': createdAt,
      'item_quantity': itemQuantity,
    }.withoutNulls,
  );

  return firestoreData;
}
