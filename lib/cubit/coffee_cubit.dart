import 'package:bloc/bloc.dart';
import 'package:coffee_shop/models/models.dart';
import 'package:coffee_shop/services/services.dart';
import 'package:equatable/equatable.dart';

part 'coffee_state.dart';

class CoffeeCubit extends Cubit<CoffeeState> {
  CoffeeCubit() : super(CoffeeInitial());

  Future<void> getCoffees() async {
    ApiReturnValue<List<Coffee>> result = await CoffeeServices.getCoffees();

    if (result.value != null) {
      emit(CoffeeLoaded(result.value));
    } else {
      emit(CoffeeLoadingFailed(result.message));
    }
  }
}
