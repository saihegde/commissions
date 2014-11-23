package commissions

class Party {

    PartyType type;
    String name;

    static hasMany = [addresses : GeographicalLocator]

    static constraints = {
    }

}
