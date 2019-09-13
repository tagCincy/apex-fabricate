@IsTest
private class FabricateTest {
  @IsTest
  static void itShouldReturnAnInstanceOfFabricateName() {
    String random = Fabricate.Name.FirstName;
    System.assert(FabricateData.FIRST_NAMES.contains(random));
  }

  @IsTest
  static void itShouldReturnAnInstanceOfFabricateAddress() {
    String random = Fabricate.Address.City;
    System.assert(FabricateData.CITIES.contains(random));
  }
}
