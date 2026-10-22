Profile: PHISCClaimItem
Parent: Claim.item
Id: phisc-claim-item

* sequence 1..1

// Coding
* productOrService 1..1
* modifier 0..*

// Quantity and service
* quantity 1..1
* seviced[x] 1..1
* locationCodeableConcept 0..1

// Financials
* net 1..1
* net.currency = #ZAR

// Extensions
* exentsion contains
    PHISCItemType 0..1 and
    PHISCProductCode 0..1
    PHISCPricingTariff 0..1
