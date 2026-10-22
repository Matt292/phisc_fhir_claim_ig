Profile: PHISCClaimSubmissionBundle
Parent: Bundle
Id: phisc-claim-submission-bundle
Title: "PHISC Claim Submission Bundle"
* type = #batch
* entry 1..* MS
* entry.request 1..1 MS
* entry.resource 1..1 MS
* entry.resource only PHISCClaim or PHISCPatient or PHISCPractitioner or PHISCOrganization or PHISCCoverage or PHISCCondition or PHISCServiceRequest

Profile: PHISCClaimResponseBundle
Parent: Bundle
Id: phisc-claim-response-bundle
Title: "PHISC Claim Response Bundle"
* type = #collection
* entry 1..* MS
* entry.resource 1..1 MS
* entry.resource only PHISCExplanationOfBenefit or PHISCPaymentReconciliation or OperationOutcome
