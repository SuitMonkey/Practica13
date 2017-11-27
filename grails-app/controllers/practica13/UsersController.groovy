package practica13

import grails.plugin.springsecurity.annotation.Secured

class UsersController {

    @Secured(['ROLE_ADMIN', 'ROLE_USUARIO'])
    def index() {
        List<Contact> listOfContacts = Contact.getAll()
        List<Department> listOfDepartments = Department.getAll()
        List<Category> listOfCategories = Category.getAll()

        def DepartmentMap = [:]
        listOfDepartments.each {department ->
            def counter = 0
            listOfContacts.each {contact->
                contact.departments.each {
                    if(it.id == department.id){
                        counter++
                    }
                }
            }
            DepartmentMap[department.name] = counter
        }
        def myDailyActivitiesData = []
        listOfDepartments.each { department ->
            println DepartmentMap[department.name]
            myDailyActivitiesData.add([department.name,DepartmentMap[department.name]])
        }


        def CategoryMap = [:]
        listOfCategories.each {category ->
            def counter = 0
            listOfContacts.each {contact->
                if(contact.category.id == category.id) {
                    counter++
                }
            }
            CategoryMap[category.name] = counter
        }
        def myDailyActivitiesData2 = []
        listOfCategories.each { category ->
            println CategoryMap[category.name];
            myDailyActivitiesData2.add([category.name,CategoryMap[category.name]])
        }

        def myDailyActivitiesColumns = [['string', 'Task'], ['number', 'Hours per Day']]
        def myDailyActivitiesColumns2 = [['string', 'Task'], ['number', 'Hours per Day']]

        render(view: "index", model: [contactsList: listOfContacts, departmentsList: listOfDepartments, myDailyActivitiesColumns: myDailyActivitiesColumns,
                                      myDailyActivitiesData : myDailyActivitiesData, myDailyActivitiesColumns2: myDailyActivitiesColumns2, myDailyActivitiesData2 : myDailyActivitiesData2])
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USUARIO'])
    def filtrarXDepartamento() {
        List<Contact> contactsList = []
        def department = params.department
        Contact.getAll().each { cItem ->
            println  cItem
            cItem.departments.each {
                if(it.id == department.toInteger()){
                    print it.name
                    contactsList.add(cItem)
                }
            }
        }

        List<Department> DepartmentList = Department.getAll()
        render(view: "filtrar", model: [contactsList: contactsList, departmentsList: DepartmentList])
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        List<Category> categoriesList = Category.getAll()
        List<Department> DepartmentList = Department.getAll()
        render(view: "create", model: [categoriesList: categoriesList, departmentsList: DepartmentList])
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USUARIO'])
    def creacion(){

        def cicle = new Contact(firstName: params.firstName, lastName: params.lastname, telephone: params.telephone, cellphone: params.cellphone, address: params.address, email: params.email, job: params.job, category: params.category).save(failOnError: true)
        params.list('departments').each { depId ->
            println depId

            def object = null
            Department.getAll().each {
                println it.id
                println it.name
                if(it.id == depId.toInteger()){
                    object = it
                }
            }
            cicle.addToDepartments(object).save(flush: true, failOnError: true)
        }



        List<Category> categoriesList = Category.getAll()
        List<Department> DepartmentList = Department.getAll()
        render(view: "create", model: [categoriesList: categoriesList, departmentsList: DepartmentList])
    }
}
