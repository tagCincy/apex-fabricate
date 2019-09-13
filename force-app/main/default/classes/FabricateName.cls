public class FabricateName {
  public String FirstName {
    get {
      return getFirstName();
    }
    private set;
  }

  public String LastName {
    get {
      return getLastName();
    }
    private set;
  }

  public String FullName {
    get {
      return getFullName();
    }
    private set;
  }

  private String getFirstName() {
    return FabricateData.FIRST_NAMES.get(Math.round(Math.random() * (FabricateData.FIRST_NAMES.size() - 1)));
  }

  private String getLastName() {
    return FabricateData.LAST_NAMES.get(Math.round(Math.random() * (FabricateData.LAST_NAMES.size() - 1)));
  }

  private String getFullName() {
    return getFirstName() + ' ' + getLastName();
  }
}
