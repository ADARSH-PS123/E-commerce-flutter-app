part of 'product_bloc_bloc.dart';

@freezed
class ProductWacherEvent with _$ProductWacherEvent{
  const factory ProductWacherEvent.getAllProducts() = _ProductWacherEventGetAllProducts;
   const factory ProductWacherEvent.setup() = _ProductWacherEventSetup;
     const factory ProductWacherEvent.serachProduct(String searchStr) = _ProductWacherEventSearch;
   
}
