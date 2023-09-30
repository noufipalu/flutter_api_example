class AuthRepository {
  Future<bool> authenticate(String email, String password) async {
    if (email == 'noufiya@gmail.com' && password == 'Noufiya@123') {
      return true;
    }
    return false;
  }
}
