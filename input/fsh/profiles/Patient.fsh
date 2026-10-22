Profile: PHISCPatient
Parent: Patient
Id: phisc-patient

* identifier 1..*
* birthDate 1..1
* gender 0..1

* identifier ^short = "National ID or Passport"

* extension contains PHISCDependentCode named dependentCode 0..1

Extension: PHISCDependentCode
Id: phisc-dependent-code
* value[x] only string