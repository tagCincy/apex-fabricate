public class Fabricate {
  public static FabricateName Name {
    get {
      return new FabricateName();
    }
    private set;
  }

  public static FabricateAddress Address {
    get {
      return new FabricateAddress();
    }
    private set;
  }
}
