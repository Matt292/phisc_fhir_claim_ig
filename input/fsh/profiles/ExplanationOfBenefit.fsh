Profile: PHISCExplanationOfBenefit
Parent: ExplanationOfBenefit
Id: phisc-eob

* status 1..1
* type 1..1

* patient 1..1
* insurer 1..1
* provider 1..1

// Link to claim
* claim 1..1

// Financial outcomes
* item 1..*

* item.adjudication 1..*

// Required categories
* item.adjudication.category from http://terminology.hl7.org/ValueSet/adjudication

// PHISC mapping
* item.adjudication.amount.currency = #ZAR

// Payment
* payment.amount 0..1
* payment.amount.currency = #ZAR