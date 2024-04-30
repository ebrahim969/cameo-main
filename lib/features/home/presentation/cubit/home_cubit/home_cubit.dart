import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tigor_store/features/admin/data/models/category_model.dart';
import 'package:tigor_store/features/home/data/model/product_model.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  List<ProductModel> womanProducts = [];
  List<ProductModel> mensProducts = [];
  List<CategoryModel> getCategories = [];
  StreamSubscription? subscription;

  Future<void> getHomeProducts() async {
    await getHomeCategory();
    await getWomensProducts();
    await getMensProducts();
  }

  Future<void> getWomensProducts() async {
    try {
      emit(WomansProductLoading());
      await firestore
          .collection("products")
          .where('category', isEqualTo: "Woman's Wear")
          .get()
          .then((value) => value.docs.forEach((element) {
                womanProducts.add(ProductModel.fromJson(element.data()));
              }));

      emit(WomansProductSuccess());
    } on FirebaseException catch (e) {
      emit(WomansProductFailure(errMessage: e.toString()));
    } catch (e) {
      emit(WomansProductFailure(errMessage: e.toString()));
    }
  }

  Future<void> getMensProducts() async {
    try {
      emit(MensProductLoading());
      await firestore
          .collection("products")
          .where('category', isEqualTo: "Men's Wear")
          .get()
          .then((value) => value.docs.forEach((element) {
                mensProducts.add(ProductModel.fromJson(element.data()));
              }));

      emit(MensProductSuccess());
    } on FirebaseException catch (e) {
      emit(MensProductFailure(errMessage: e.toString()));
    } catch (e) {
      emit(MensProductFailure(errMessage: e.toString()));
    }
  }

  Future<void> getHomeCategory() async {
    try {
      emit(GetCategoriesLoading());
      await firestore
          .collection("categories")
          .get()
          .then((value) => value.docs.forEach((element) {
                getCategories.add(CategoryModel.fromJson(element.data()));
              }));

      emit(GetCategoriesSuccess());
    } on FirebaseException catch (e) {
      emit(GetCategoriesFailure(errMessage: e.toString()));
    } catch (e) {
      emit(GetCategoriesFailure(errMessage: e.toString()));
    }
  }

  void checkInternetConnection() {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        emit(InternetConnectedState());
      } else {
        emit(InternetNotConnectedState(
            mesage: "Check Your Internet And Try Again"));
      }
    });
  }

  @override
  Future<void> close() {
    subscription?.cancel();
    return super.close();
  }
}
