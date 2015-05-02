package testApp

class Employee {
	String firstName
	String lastName
	BigDecimal salary
	BigDecimal taxRate
    static constraints = {
        //taxRate bindable: false
    }
}
