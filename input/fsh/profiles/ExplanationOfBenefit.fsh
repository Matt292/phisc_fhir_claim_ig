Profile: PHISCExplanationOfBenefit
Parent: ExplanationOfBenefit
Id: phisc-eob

* status 1..1
* type 1..1
* use = #claim

* patient only Reference(PHISCPatient)
* patient 1..1 MS
* insurer only Reference(PHISCOrganization)
* insurer 1..1
* provider only Reference(PHISCPractitioner or PHISCOrganization)
* provider 1..1

// Link to claim
* claim only Reference(PHISCClaim)
* claim 1..1 MS

// Outcomes

* outcome 1..1 MS
* disposition MS
* insurance 1..* MS
* item MS
* item 1..*
* item.adjudication MS
* item.adjudication 1..*
* total MS
* payment MS
* payment.amount.currency = #ZAR

// Required categories
* item.adjudication.category from http://terminology.hl7.org/ValueSet/adjudication

// PHISC mapping
* item.adjudication.amount.currency = #ZAR

// Payment
* payment.amount 0..1
* payment.amount.currency = #ZAR