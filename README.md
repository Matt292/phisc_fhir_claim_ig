# PHISC FHIR Claims IG

A FHIR R4 implementation-guide source project for provider-to-medical-scheme claim submission based on the PHISC standardised claim form.

## Local build

```cmd
npm install
npx sushi .
```

Download the current HL7 IG Publisher into `input-cache/publisher.jar`, then run:

```cmd
java -jar input-cache/publisher.jar -ig ig.ini
```

The generated website is written to `output/`.

> Governance note: the canonical URL, publisher details, PHISC code lists, licensing position and publication authority are placeholders pending formal PHISC approval.
