package testApp

import grails.plugin.spock.IntegrationSpec

class EmployeeControllerSpec extends IntegrationSpec {
    def mockParams = [id: 1, firstName:'newFirstName', lastName: 'newLastName', salary: 1]

    EmployeeController controller = new EmployeeController()


    void "updateEmployeeNaiveWay() should update salary"() {
        given:
            controller.params.putAll(mockParams)
        and:
            controller.updateEmployeeNaiveWay()
        expect:
            Employee.get(mockParams.id).salary == 1
    }

    void "updateEmployeeWhiteList() should not update salary"() {
        given:
            controller.params.putAll(mockParams)
        and:
            controller.updateEmployeeWhiteList()
        expect:
            Employee.get(mockParams.id).salary != 1
    }

    void "updateEmployeeBindDataInclude() should not update salary"() {
        given:
            controller.params.putAll(mockParams)
        and:
            controller.updateEmployeeBindDataInclude()
        expect:
            Employee.get(mockParams.id).salary != 1
    }

    void "updateEmployeeBindDataExclude() should not update salary"() {
        given:
            controller.params.putAll(mockParams)
        and:
           controller.updateEmployeeBindDataExclude()
        expect:
           Employee.get(mockParams.id).salary != 1
    }

}
