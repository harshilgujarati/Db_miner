import 'package:db_miner_app/models/fevorite_model.dart';
import 'package:db_miner_app/models/quotes_model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class fevoriteController extends GetxController {
  fevorite_model fevorite_list = fevorite_model(fevorite_list: []);

  void add_fevorite({required Quote data}) {
    fevorite_list.fevorite_list.add(data);
    update();
  }
}
