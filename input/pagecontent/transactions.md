# Transactions

## Submit claim

POST a profiled batch Bundle to the claims endpoint. Each entry includes a request method and URL.

## Receive response

The receiver returns an HTTP acknowledgement and may subsequently return a response Bundle containing an `ExplanationOfBenefit` or `OperationOutcome`.
