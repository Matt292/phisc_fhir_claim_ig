Instance: phisc.fhir.za.claims
InstanceOf: ImplementationGuide
Usage: #definition

* url = "http://example.org/fhir/phisc/ImplementationGuide/phisc.fhir.za.claims"
* name = "PHISCFHIRCLAIMIG"
* status = #draft
* version = "1.0.0"

* resource[0].reference.reference = "StructureDefinition/phisc-claim"
* resource[1].reference.reference = "StructureDefinition/phisc-claim-item"