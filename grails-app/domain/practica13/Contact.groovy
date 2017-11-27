package practica13

class Contact implements Serializable {

    String firstName
    String lastName
    String address
    String email
    String telephone
    String job
    String cellphone

    Category category

    static hasMany = [departments: Department]

    static constraints = {
        firstName nullable: false
        lastName nullable: false
        address nullable: false
        job nullable: false
        email unique: true
        telephone unique: true
        cellphone unique: true
    }
}
