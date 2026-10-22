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
* item.sequence 1..1 MS
* item.careTeamSequence 0..* MS
* item.diagnosisSequence 1..* MS
* item.productOrService 1..1 MS
* item.modifier 0..* MS
* item.serviced[x] 1..1 MS
* item.location[x] 0..1 MS
* item.quantity 1..1 MS
* item.quantity.value 1..1 MS
* item.unitPrice 1..1 MS
* item.unitPrice.value 1..1 MS
* item.unitPrice.currency 1..1 MS
* item.unitPrice.currency = #ZAR
* item.net 1..1 MS
* item.net.value 1..1 MS
* item.net.currency 1..1 MS
* item.net.currency = #ZAR

// Item Extensions
* item.extension contains
	PHISCItemType named itemType 1..1 MS and
	PHISCPricingTariff named pricingTariff 0..1 MS and
	PHISCBenefitType named benefitType 0..1 MS and
	PHISCFinancialComponent named financialComponent 0..* MS

// Extensions
* extension contains
	PHISCAccountNumber named accountNumber 0..1 MS and
	PHISCClaimVersion named claimVersion 0..1 MS and
	PHISCPaymentIndicator named payMember 0..1 MS