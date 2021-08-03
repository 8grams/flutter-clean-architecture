class Endpoints {
  late String baseUrl;

  Endpoints(String baseUrl) {
    this.baseUrl = baseUrl;
  }

  String users() {
    return 'userjsondemo/db';
  }
}
