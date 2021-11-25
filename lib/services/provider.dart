import 'package:get_it/get_it.dart';
import 'package:tic_tac_toe/services/board.dart';

final locator = new GetIt.asNewInstance();

void setupLocator() {
  locator.registerSingleton(BoardService());
}