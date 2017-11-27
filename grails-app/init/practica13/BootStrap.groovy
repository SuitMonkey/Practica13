package practica13

class BootStrap {

    def init = { servletContext ->

        User admin =new User(username: "admin", password: "admin").save(failOnError: true)
        User usuario =new User(username: "usuario", password: "usuario").save(failOnError: true)

        //Creando los roles.
        def roleAdmin = new Role(authority: "ROLE_ADMIN").save(failOnError: true)
        def roleUsuario = new Role(authority: "ROLE_USUARIO").save(failOnError: true)

        //Asociando el usuario y los roles.
        UserRole.create(admin, roleAdmin)
        UserRole.create(usuario, roleUsuario)

    }
    def destroy = {
    }
}
