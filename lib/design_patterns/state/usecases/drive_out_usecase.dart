import 'package:flutter_design_patterns/design_patterns/state/models/solicitation_response.dart';
import 'package:flutter_design_patterns/design_patterns/state/models/drive_out.dart';
import 'package:flutter_design_patterns/design_patterns/state/models/solicitation.dart';
import 'package:flutter_design_patterns/design_patterns/state/usecases/usecase.dart';

class DriveOutUsecase implements Usecase<Solicitation, DriveOut> {
  @override
  Future<Solicitation> execute({DriveOut? param}) {
    // TODO: implement execute
    throw UnimplementedError();
  }
}
