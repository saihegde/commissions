package commissions

class Member extends Person{

    static hasMany = [planMembership : PlanMembership]

    static constraints = {
    }

}
