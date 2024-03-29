import 'package:demo/core/store.dart';
import 'package:demo/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  // catalog field
 CatalogModel _catalog;

  // collection of ids - store ids of each item
  final List<int> _itemIds = [];

  // get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

// get items in the in cart..
  List<Item> get items => _itemIds.map((id) => _catalog.getByID(id)).toList();

  //total price :
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);


  
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store.cart._itemIds.remove(item.id);
  }
}

