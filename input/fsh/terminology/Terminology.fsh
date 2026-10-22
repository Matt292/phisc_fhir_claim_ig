CodeSystem: PHISCTransactionTypeCS
Id: phisc-transaction-type
Title: "PHISC Transaction Type"
* ^caseSensitive = true
* ^content = #complete
* #PHISC01 "Claim"
* #PHISC02 "Amended Claim"
* #PHISC03 "Credit Note"
* #PHISC04 "COID Claim"
* #PHISC07 "Response Message"
ValueSet: PHISCTransactionTypeVS
Id: phisc-transaction-type
* include codes from system PHISCTransactionTypeC

CodeSystem: PHISCItemTypeCS
Id: phisc-item-type
* ^caseSensitive = true
* ^content = #example
* #01 "Product"
* #02 "Tariff or procedure"
* #03 "Modifier"
* #04 "Procedure and modifier"
* #05 "Procedure and product"
* #06 "Other"
ValueSet: PHISCItemTypeVS
Id: phisc-item-type
* include codes from system PHISCItemTypeCS

CodeSystem: PHISCCouncilTypeCS
Id: phisc-council-type
* ^caseSensitive = true
* ^content = #example
* #HP "HPCSA"
* #AH "AHPCSA"
* #SW "SACSSP"
* #SA "SANC"
* #PC "SAPC"
ValueSet: PHISCCouncilTypeVS
Id: phisc-council-type
* include codes from system PHISCCouncilTypeCS

CodeSystem: PHISCPricingTariffCS
Id: phisc-pricing-tariff
* ^caseSensitive = true
* ^content = #example
* #01 "Reference tariff"
* #02 "Private tariff"
* #03 "Scheme tariff"
* #04 "Contracted tariff"
* #05 "Manufacturer price"
* #06 "Single Exit Price"
* #07 "NAP price"
ValueSet: PHISCPricingTariffVS
Id: phisc-pricing-tariff
* include codes from system PHISCPricingTariffCS

CodeSystem: PHISCBenefitTypeCS
Id: phisc-benefit-type
* ^caseSensitive = true
* ^content = #example
* #001 "General benefit"
* #002 "Hospital benefit"
* #003 "Chronic benefit"
* #004 "Medical savings account"
* #999 "Other"
ValueSet: PHISCBenefitTypeVS
Id: phisc-benefit-type
* include codes from system PHISCBenefitTypeCS

CodeSystem: PHISCFinancialComponentCS
Id: phisc-financial-component
* ^caseSensitive = true
* ^content = #complete
* #gross "Gross amount"
* #discount "Discount amount"
* #vat "VAT amount"
* #collection "Collection amount"
* #deduction "Deduction amount"
* #base-cost "Base cost"
* #markup "Mark-up"
* #professional-fee "Professional fee"
ValueSet: PHISCFinancialComponentVS
Id: phisc-financial-component
* include codes from system PHISCFinancialComponentCS

