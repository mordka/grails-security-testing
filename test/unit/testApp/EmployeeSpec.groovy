package testApp

import grails.test.mixin.TestMixin
import grails.test.mixin.support.GrailsUnitTestMixin
import org.codehaus.groovy.grails.web.metaclass.BindDynamicMethod
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestMixin(GrailsUnitTestMixin)
class EmployeeSpec extends Specification {
    def fakeSalary = 0
    def fakeTaxRate = 100
    def mockParams =[id: 1, firstName:'newFirstName', lastName: 'newLastName', salary: fakeSalary, taxRate: fakeTaxRate]
    def employee = new Employee(firstName:'Rich',lastName:'Person', salary: 1000000, taxRate: 10)
    void "should allow to update taxRate"() {
        given:
           mockParams
        when: "bind data"
            employee.properties = mockParams
        then:
            employee.firstName == 'newFirstName'
            employee.lastName == 'newLastName'
            employee.salary == 0
            employee.taxRate == 100

    }


}
