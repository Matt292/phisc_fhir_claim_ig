# Architecture

The principal submission artefact is a batch `Bundle` containing a `Claim` and referenced patient, coverage, provider, payor, diagnosis and referral resources. Adjudication is returned as an `ExplanationOfBenefit`; payment-level reconciliation is represented by `PaymentReconciliation`.
