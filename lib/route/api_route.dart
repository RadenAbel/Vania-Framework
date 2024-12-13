import 'package:crudsederhana/app/http/controllers/auth_controller.dart';
import 'package:crudsederhana/app/http/controllers/customers_controller.dart';
import 'package:crudsederhana/app/http/controllers/orderitems_controller.dart';
import 'package:crudsederhana/app/http/controllers/orders_controller.dart';
import 'package:crudsederhana/app/http/controllers/productnotes_controller.dart';
import 'package:crudsederhana/app/http/controllers/products_controller.dart';
import 'package:crudsederhana/app/http/controllers/todo_controller.dart';
import 'package:crudsederhana/app/http/controllers/user_controller.dart';
import 'package:crudsederhana/app/http/controllers/vendors_controller.dart';
import 'package:vania/vania.dart';

class ApiRoute implements Route {
  @override
  void register() {
    Router.post('/store-customers', CustomersController().store);
    Router.post('/store-vendors', VendorsController().store);
    Router.post('/store-products', ProductsController().store);
    Router.post('/store-productnotes', ProductnotesController().store);
    Router.post('/store-orders', OrdersController().store);
    Router.post('/store-orderitems', OrderitemsController().store);
    Router.post('/register', AuthController().register);
    Router.post('/login', AuthController().login);
    Router.post('/todo', TodoController().store);
    Router.get('/get-customers', CustomersController().show);
    Router.get('/get-vendors', VendorsController().show);
    Router.get('/get-products', ProductsController().show);
    Router.get('/get-productnotes', ProductnotesController().show);
    Router.get('/get-orders', OrdersController().show);
    Router.get('/get-orderitems', OrderitemsController().show);
    Router.get('', UserController().index);
    Router.patch('update_password', UserController().updatePassword);
    Router.put('/customers/{cust_id}', CustomersController().update);
    Router.put('/vendors/{vend_id}', VendorsController().update);
    Router.put('/products/{prod_id}', ProductsController().update);
    Router.put('/productnotes/{note_id}', ProductnotesController().update);
    Router.put('/orders/{order_num}', OrdersController().update);
    Router.put('/orderitems/{order_item}', OrderitemsController().update);
    Router.delete('/customers/{custid}', CustomersController().destroy);
    Router.delete('/vendors/{vendid}', VendorsController().destroy);
    Router.delete('/products/{prodid}', ProductsController().destroy);
    Router.delete('/productnotes/{noteid}', ProductnotesController().destroy);
    Router.delete('/orders/{orderid}', OrdersController().destroy);
    Router.delete('/orderitems/{orderitem}', OrderitemsController().destroy);
  }
}
