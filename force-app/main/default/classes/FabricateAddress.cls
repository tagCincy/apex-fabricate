public class FabricateAddress {
  public String StreetAddress {
    get {
      return getStreetAddress();
    }
  }

  public String City {
    get {
      return getCity();
    }
  }

  public String State {
    get {
      return getState();
    }
  }

  public String StateAbbr {
    get {
      return getStateAbbreviation();
    }
  }

  public String PostalCode {
    get {
      return getPostalCode();
    }
  }

  private String getBuildingNumber() {
    return String.valueOf(Math.round(Math.random() * 9999));
  }

  private String getStreetName() {
    String streetName = FabricateData.STREETS.get(Math.round(Math.random() * (FabricateData.STREETS.size() - 1)));
    String streetSuffix = FabricateData.STREET_SUFFIXES.get(
      Math.round(Math.random() * (FabricateData.STREET_SUFFIXES.size() - 1))
    );
    return streetName + ' ' + streetSuffix;
  }

  private String getStreetAddress() {
    return getBuildingNumber() + ' ' + getStreetName();
  }

  private String getCity() {
    return FabricateData.CITIES.get(Math.round(Math.random() * (FabricateData.CITIES.size() - 1)));
  }

  private String getState() {
    List<String> stateKeys = new List<String>(FabricateData.STATES.keySet());
    return stateKeys.get(Math.round(Math.random() * (stateKeys.size() - 1)));
  }

  private String getStateAbbreviation() {
    return getStateAbbreviation(getState());
  }

  private String getStateAbbreviation(String state) {
    return FabricateData.STATES.get(state);
  }

  private String getPostalCode() {
    return String.valueOf(Math.abs(Crypto.getRandomInteger())).left(5).leftPad(5, '0');
  }
}
