import 'package:flutter_design_patterns/design_patterns/state/models/solicitation.dart';
import 'package:flutter_design_patterns/design_patterns/state/models/solicitation_response.dart';
import 'package:flutter_design_patterns/design_patterns/state/usecases/usecase.dart';

class AcceptRejectUsecase
    implements Usecase<Solicitation, SolicitationResponse> {
  @override
  Future<Solicitation> execute({SolicitationResponse? param}) async {
    return Solicitation();
  }
}
