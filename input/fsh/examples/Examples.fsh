Instance: ExamplePHISCPatient
InstanceOf: PHISCPatient
Usage: #example
Title: "Example PHISC Patient"

* identifier[0].system = "https://phisc.org.za/id/patient"
* identifier[0].value = "PATIENT-001"

* name[0].use = #official
* name[0].family = "Example"
* name[0].given[0] = "Patient"

* birthDate = "1980-01-01"
* gender = #unknown

Instance: ExamplePHISCBillingPractice
InstanceOf: PHISCOrganization
Usage: #example
Title: "Example PHISC Billing Practice"

* identifier[0].system = "https://phisc.org.za/id/pcns"
* identifier[0].value = "0000000000000"

* name = "Example Billing Practice"

Instance: ExamplePHISCScheme
InstanceOf: PHISCOrganization
Usage: #example
Title: "Example PHISC Medical Scheme"

* identifier[0].system = "https://phisc.org.za/id/medical-scheme"
* identifier[0].value = "0000"

* name = "Example Medical Scheme"

Instance: ExamplePHISCCoverage
InstanceOf: PHISCCoverage
Usage: #example
Title: "Example PHISC Coverage"

* status = #active

* identifier[0].system = "https://phisc.org.za/id/member-number"
* identifier[0].value = "MEMBER-001"

* subscriber = Reference(ExamplePHISCPatient)
* beneficiary = Reference(ExamplePHISCPatient)

* relationship =
    http://terminology.hl7.org/CodeSystem/subscriber-relationship#self

* payor[0] = Reference(ExamplePHISCScheme)

Instance: ExamplePHISCClaim
InstanceOf: PHISCClaim
Usage: #example
Title: "Example PHISC Professional Claim"
Description: "Example provider claim submitted to a medical scheme."

// Claim identifier
* identifier[0].system = "https://example.org/claims"
* identifier[0].value = "CLAIM-001"

// Claim classification
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional
* subType = PHISCTransactionTypeCS#PHISC01
* use = #claim

// Parties
* patient = Reference(ExamplePHISCPatient)
* provider = Reference(ExamplePHISCBillingPractice)
* insurer = Reference(ExamplePHISCScheme)

// Claim metadata
* created = "2026-10-20"
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal

// Diagnosis
* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept =
    http://hl7.org/fhir/sid/icd-10#Z00.0

// Coverage
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(ExamplePHISCCoverage)

// Claim item
* item[0].sequence = 1
* item[0].diagnosisSequence[0] = 1

* item[0].productOrService.coding[0].system =
    "https://phisc.org.za/fhir/CodeSystem/example-tariff"
* item[0].productOrService.coding[0].code = #0190
* item[0].productOrService.coding[0].display =
    "Example professional service"

// Service date
* item[0].servicedDate = "2026-10-20"

// Quantity
* item[0].quantity.value = 1

// Unit price
* item[0].unitPrice.value = 500.00
* item[0].unitPrice.currency = #ZAR

// Net submitted amount
* item[0].net.value = 500.00
* item[0].net.currency = #ZAR

// Required PHISC item-type extension
* item[0].extension[itemType].valueCoding =
    PHISCItemTypeCS#02 "Tariff or procedure"

// Claim total
* total.value = 500.00
* total.currency = #ZAR