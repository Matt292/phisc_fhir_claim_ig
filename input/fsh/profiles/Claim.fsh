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
* priority 1..1 MS

// Dates
* created 1..1 MS

// Patient
* patient only Reference(PHISCPatient)
* patient 1..1 MS
* created 1..1 MS

// Provider
* provider only Reference(PHISCPractitioner or PHISCOrganization)
* provider 1..1 MS

// Insurer
* insurer only Reference(PHISCOrganization)
* insurer 1..1 MS

// Insurance
* insurance 1..* MS
* insurance.coverage only Reference(PHISCCoverage)

// Relationships
* patient 1..1 MS
* provider 1..1 MS
* insurer 1..1 MS

// Financials
* total 1..1 MS
* total.currency = #ZAR

// Diagnosis
* diagnosis 1..* MS
* diagnosis.sequence 1..1
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosisCodeableConcept from http://hl7.org/fhir/ValueSet/icd-10 (extensible)

// Care team (providers)
* careTeam 0..* MS
* careTeam.provider only Reference(PHISCPractitioner or PHISCOrganization)

// Line items
* item 1..* MS
* item obeys phisc-item-requires-code

// Item Extensions
* item.extensions contains
	PHISCItemType named itemType 1..1 MS
	PHISCPricingTariff named pricingTariff 0..1 MS
	PHISCBenefitType named benefitType 0..1 MS and
	PHISCFinancialComponent named financialComponent 0..* MS

// Extensions
* extension contains
	PHISCAccountNumber 0..1 named accountNumber 0..1 MS and
	PHISCClaimsVersion 0..1 named claimVersion 0..1 MS and
	PHISCPaymentIndicator 0..1 named payMember 0..1 MS