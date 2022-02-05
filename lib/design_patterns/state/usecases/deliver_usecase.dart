import 'package:flutter_design_patterns/design_patterns/state/models/solicitation_response.dart';
import 'package:flutter_design_patterns/design_patterns/state/models/deliver.dart';
import 'package:flutter_design_patterns/design_patterns/state/models/solicitation.dart';
import 'package:flutter_design_patterns/design_patterns/state/usecases/usecase.dart';

class DeliverUsecase implements Usecase<Solicitation, Deliver> {
  @override
  Future<Solicitation> execute({Deliver? param}) async {
    return Solicitation();
  }
}
