Profile: PHISCCondition
Parent: Condition
Id: phisc-condition
Title: "PHISC Diagnosis"
* subject only Reference(PHISCPatient)
* subject 1..1 MS
* code 1..1 MS
* code.coding.system 1..1
* code.coding.code 1..1

Profile: PHISCServiceRequest
Parent: ServiceRequest
Id: phisc-service-request
Title: "PHISC Referral or Prescription"
* status 1..1 MS
* intent 1..1 MS
* subject only Reference(PHISCPatient)
* subject 1..1 MS
* requester MS
* performer MS
