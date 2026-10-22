Instance: ExamplePHISCClaim
InstanceOf: PHISCClaim

* identifier.value = "CLAIM123456"

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional

* created = "2026-05-18"

* patient.reference = "Patient/example"
* provider.reference = "Organization/example"
* insurer.reference = "Organization/scheme"

* total.value = 350.00
* total.currency = #ZAR

* item[0].sequence = 1
* item[0].productOrService = http://example.org/nhrpl#0190
* item[0].quantity.value = 1
* item[0].net.value = 350.00