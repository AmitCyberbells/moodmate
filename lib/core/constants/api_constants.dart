class ApiConstants {
  //users base url
  static const String baseUrl = "https://moodmate-backend.vercel.app";

  //auth api urls
  static const String authBaseUrl = "$baseUrl/users";
  static const String login = "$authBaseUrl/login";
  static const String signup = "$authBaseUrl/signup";
  static const String logout = "$authBaseUrl/logout";

  //pets api urls
  static const String petBaseUrl = "$baseUrl/pet";
  static const String getAllPets = petBaseUrl;
  static const String getByIdPets = "$authBaseUrl/ById";
}
