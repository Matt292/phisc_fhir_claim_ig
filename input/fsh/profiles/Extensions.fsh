Extension: PHISCAccountNumber
Id: phisc-account-number
Title: "PHISC Account Number"
Description: "Supplier account or patient file number."
* ^context.type = #element
* ^context.expression = "Claim"
* value[x] only string
* valueString 1..1

Extension: PHISCClaimVersion
Id: phisc-claim-version
Title: "PHISC Claim Version"
* ^context.type = #element
* ^context.expression = "Claim"
* value[x] only positiveInt

Extension: PHISCDependentCode
Id: phisc-dependent-code
Title: "PHISC Dependent Code"
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only string

Extension: PHISCCouncilType
Id: phisc-council-type
Title: "Professional Council Type"
* ^context.type = #element
* ^context.expression = "Practitioner.identifier"
* value[x] only Coding
* valueCoding from PHISCCouncilTypeVS (required)

Extension: PHISCItemType
Id: phisc-item-type
Title: "PHISC Item Type"
* ^context.type = #element
* ^context.expression = "Claim.item"
* value[x] only Coding
* valueCoding from PHISCItemTypeVS (required)

Extension: PHISCPricingTariff
Id: phisc-pricing-tariff
Title: "PHISC Pricing Tariff Indicator"
* ^context.type = #element
* ^context.expression = "Claim.item"
* value[x] only Coding
* valueCoding from PHISCPricingTariffVS (required)

Extension: PHISCBenefitType
Id: phisc-benefit-type
Title: "PHISC Benefit Type"
* ^context.type = #element
* ^context.expression = "Claim.item"
* value[x] only Coding
* valueCoding from PHISCBenefitTypeVS (required)

Extension: PHISCPaymentIndicator
Id: phisc-payment-indicator
Title: "Pay Member Indicator"
* ^context.type = #element
* ^context.expression = "Claim"
* value[x] only boolean

Extension: PHISCFinancialComponent
Id: phisc-financial-component
Title: "PHISC Financial Component"
Description: "A named submitted financial component such as gross, VAT, discount, collection, deduction, base cost, mark-up or professional fee."
* ^context.type = #element
* ^context.expression = "Claim.item"
* extension contains type 1..1 and amount 1..1
* extension[type].value[x] only Coding
* extension[type].valueCoding from PHISCFinancialComponentVS (required)
* extension[amount].value[x] only Money
