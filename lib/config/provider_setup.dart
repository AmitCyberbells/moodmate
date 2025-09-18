import 'package:moodmate/data/datasources/pet_remote_datasource.dart';
import 'package:moodmate/data/repositories/pet_repository_impl.dart';
import 'package:moodmate/domain/usecases/auth_usecase.dart';
import 'package:moodmate/domain/usecases/pet_usecase.dart';
import 'package:moodmate/presentation/screens/auth/auth_provider.dart';
import 'package:moodmate/presentation/screens/caretool/caretool_provider.dart';
import 'package:moodmate/presentation/screens/home/home_provider.dart';
import 'package:moodmate/presentation/screens/loading/loading_state.dart';
import 'package:moodmate/presentation/screens/main/main_bottom_navigation_state.dart';
import 'package:moodmate/presentation/screens/onboading/onboading_state.dart';
import 'package:moodmate/presentation/screens/pet_selection/pet_selection_state.dart';
import 'package:moodmate/presentation/screens/profile/profile_provider.dart';
import 'package:moodmate/presentation/screens/splash/splash_state.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../data/datasources/auth_remote_datasource.dart';
import '../data/repositories/auth_repository_impl.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(
    create: (_) {
      final remoteDataSource = AuthRemoteDataSource();
      final repository = AuthRepositoryImpl(remoteDataSource);
      return AuthProvider(authUseCase: AuthUsecase(repository));
    },
  ),
  ChangeNotifierProvider(create: (context) => SplashState()),
  ChangeNotifierProvider(create: (context) => OnboadingState()),
  ChangeNotifierProvider(create: (context) => LoadingState()),
  ChangeNotifierProvider(
    create: (_) {
      final remoteDataSource = PetRemoteDatasource();
      final repository = PetRepositoryImpl(remoteDataSource);
      return PetSelectionState(petUsecase: PetUsecase(repository));
    },
  ),
  ChangeNotifierProvider(create: (context) => HomeProvider()),
  ChangeNotifierProvider(
    create: (_) {
      final remoteDataSource = AuthRemoteDataSource();
      final repository = AuthRepositoryImpl(remoteDataSource);
      return ProfileProvider(authUseCase: AuthUsecase(repository));
    },
  ),
  ChangeNotifierProvider(create: (context) => MainBottomNavigationState()),
  ChangeNotifierProvider(create: (context) => CaretoolProvider()),
];
