package practica13

class LogoutController {

    def index = {
        session.invalidate()

        redirect(controller:"users", action: "index")
    }
}
