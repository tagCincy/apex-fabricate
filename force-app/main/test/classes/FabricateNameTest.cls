@IsTest
private class FabricateNameTest {
  static FabricateName fabName = new FabricateName();

  @IsTest
  static void itShouldReturnRandomFirstName() {
    String random = fabName.FirstName;
    System.assert(FabricateData.FIRST_NAMES.contains(random));
  }

  @IsTest
  static void itShouldReturnRandomLastName() {
    String random = fabName.LastName;
    System.assert(FabricateData.LAST_NAMES.contains(random));
  }

  @IsTest
  static void itShouldReturnRandomFullName() {
    String random = fabName.FullName;
    System.assert(FabricateData.FIRST_NAMES.contains(random.split('\\s')[0]));
    System.assert(FabricateData.LAST_NAMES.contains(random.split('\\s')[1]));
  }
}