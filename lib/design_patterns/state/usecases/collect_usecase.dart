import 'package:flutter_design_patterns/design_patterns/state/models/solicitation.dart';
import 'package:flutter_design_patterns/design_patterns/state/usecases/usecase.dart';

class CollectUsecase implements Usecase<Solicitation, int> {
  @override
  Future<Solicitation> execute({int? param}) async {
    return Solicitation();
  }
}
