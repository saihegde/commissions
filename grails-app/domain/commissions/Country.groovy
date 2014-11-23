package commissions

/**
 * Created by sai on 11/16/14.
 */
enum Country {

    US("United States of America"),
    IN("India"),
    UK("United Kingdom")

    Country(String name){
        this.name = name;
    }
    private final String name;

    private String value(){
        return name;
    }
}
