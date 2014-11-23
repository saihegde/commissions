package commissions

class GeographicalLocator {

    String line1;
    String line2;
    String city;
    String county;
    String state;
    String zipcode;
    Country country;

    static belongsTo = [party: Party]

    static constraints = {
        country(blank : false)
    }
}
