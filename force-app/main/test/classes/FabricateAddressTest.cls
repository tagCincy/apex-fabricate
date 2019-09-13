@IsTest
private class FabricateAddressTest {
  static FabricateAddress fabAddress = new FabricateAddress();

  @IsTest
  static void itShouldReturnRandomStreetAddress() {
    String random = fabAddress.StreetAddress;
    List<String> parts = random.split('\\s');
    System.assert(Pattern.matches('[0-9]{1,5}', parts[0]));
    System.assert(FabricateData.STREETS.contains(parts[1]));
    System.assert(FabricateData.STREET_SUFFIXES.contains(parts[2]));
  }

  @IsTest
  static void itShouldReturnRandomCity() {
    String random = fabAddress.City;
    System.assert(FabricateData.CITIES.contains(random));
  }

  @IsTest
  static void itShouldReturnRandomState() {
    String random = fabAddress.State;
    System.assert(FabricateData.STATES.containsKey(random));
  }

  @IsTest
  static void itShouldReturnRandomStateAbbreviation() {
    String random = fabAddress.StateAbbr;
    System.assert(FabricateData.STATES.values().contains(random));
  }

  @IsTest
  static void itShouldReturnRandomPostalCode() {
    String random = fabAddress.PostalCode;
    System.assert(Pattern.matches('[0-9]{5}', random));
  }
}