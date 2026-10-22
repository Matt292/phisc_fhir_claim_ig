Instance: PHISCClaimsCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* status = #draft
* date = "2026-10-22"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* rest.mode = #server
* rest.resource[0].type = #Bundle
* rest.resource[=].supportedProfile[0] = Canonical(PHISCClaimSubmissionBundle)
* rest.resource[=].interaction[0].code = #create
* rest.resource[+].type = #Claim
* rest.resource[=].supportedProfile[0] = Canonical(PHISCClaim)
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
