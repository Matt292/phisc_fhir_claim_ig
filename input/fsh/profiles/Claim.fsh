Profile: PHISCClaim
Parent: Claim
Id: phisc-claim

// Identifiers
* identifier 1..*
* identifier.system = "urn:phisc:claim-id"

// Core
* status = #active
* type 1..1
* use = #claim
* subType from PHISCTransactionTypeVS (required)

// Dates
* created 1..1 MS

// Relationships
* patient 1..1 MS
* provider 1..1 MS
* insurer 1..1 MS

// Financials
* total 1..1
* total.currency = #ZAR

// Diagnosis
* diagnosis 1..* MS
* diagnosis.sequence 1..1
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosisCodeableConcept from http://hl7.org/fhir/ValueSet/icd-10 (extensible)

// Care team (providers)
* careTeam 0..*
* careTeam.provider 1..1

// Line items
* item 1..* MS
* item obeys phisc-item-requires-code

// Extensions
* extension contains
    PHISCAccountNumber 0..1 and
    PHISCClaimsVersion 0..1 and
    PHISCBenefitType 0..1 and
    PHISCPaymentIndicator 0..1