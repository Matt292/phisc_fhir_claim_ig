Instance: example-patient
InstanceOf: PHISCPatient
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:patient-001"
* name.family = "Example"
* name.given = "Patient"
* birthDate = "1980-01-01"
* gender = #unknown

Instance: example-provider
InstanceOf: PHISCOrganization
Usage: #example
* identifier.system = "https://phisc.org.za/id/pcns"
* identifier.value = "0000000000000"
* name = "Example Billing Practice"

Instance: example-scheme
InstanceOf: PHISCOrganization
Usage: #example
* identifier.system = "https://phisc.org.za/id/medical-scheme"
* identifier.value = "0000"
* name = "Example Medical Scheme"

Instance: example-coverage
InstanceOf: PHISCCoverage
Usage: #example
* status = #active
* identifier.system = "https://phisc.org.za/id/member-number"
* identifier.value = "MEMBER001"
* beneficiary = Reference(example-patient)
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
* payor = Reference(example-scheme)

Instance: example-claim
InstanceOf: PHISCClaim
Usage: #example
* identifier.system = "https://example.org/claims"
* identifier.value = "CLAIM-001"
* status = #active
* type = $claim-type#professional
* subType = PHISCTransactionTypeCS#PHISC01
* use = #claim
* patient = Reference(example-patient)
* created = "2026-10-22"
* provider = Reference(example-provider)
* insurer = Reference(example-scheme)
* priority = $process-priority#normal
* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept = $icd10#Z00.0
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(example-coverage)
* item[0].sequence = 1
* item[0].diagnosisSequence = 1
* item[0].productOrService = https://phisc.org.za/fhir/CodeSystem/example-tariff#0190
* item[0].servicedDate = "2026-10-20"
* item[0].quantity.value = 1
* item[0].unitPrice.value = 500
* item[0].unitPrice.currency = #ZAR
* item[0].net.value = 500
* item[0].net.currency = #ZAR
* item[0].extension[itemType].valueCoding = PHISCItemTypeCS#02
* total.value = 500
* total.currency = #ZAR
