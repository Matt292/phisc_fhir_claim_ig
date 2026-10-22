# PHISC to FHIR Mapping

The source-to-target mapping workbook should be maintained as a governed companion artefact. Core mappings include claim header to `Claim`, member cover to `Coverage`, treating/referring parties to `Practitioner` and `Organization`, diagnoses to `Claim.diagnosis` or `Condition`, treatment lines to `Claim.item`, and adjudication to `ExplanationOfBenefit`.

Detailed discipline-specific fields for dentistry, pathology, pharmacy, radiology and optometry require additional profiles and test cases before normative publication.
