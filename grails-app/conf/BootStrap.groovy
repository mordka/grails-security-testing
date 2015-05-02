import testApp.Employee

class BootStrap {

    def init = { servletContext ->
    	new Employee(firstName:'Sam',lastName:'Something', salary: 20000, taxRate: 20).save(failOnError:true)
    	new Employee(firstName:'Kim',lastName:'Jongun', salary: 50000, taxRate: 20).save(failOnError:true)
    }
    def destroy = {
    }
}
