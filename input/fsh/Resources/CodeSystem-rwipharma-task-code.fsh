CodeSystem: RWIpharmaTaskCodeExample
Id: rwipharma-task-code
Title: "Example RWI-pharma Task Code System"
Description: "Example Code system for regulatory task types in RWI-pharma submissions"
* ^hierarchyMeaning = #is-a

* ^caseSensitive = true

* ^status = #active
* ^experimental = false

//* #initial-submission "Initial Submission" "First submission of a new application or major variation"
//* #supplement "Supplement / Variation" "Post-authorization change (Type IA, IB, II, extension, etc.)"
//* #variation-type-ib "Type IB Variation" "Minor, post-approval change to a medicinal product's marketing authorization that has minimal impact on quality, safety, or efficacy"
//* #response-to-questions "Response to Information Request" "Applicant response to regulator questions"
//* #information-request "List of Questions / Information Request" "Regulator raises questions or requests additional data"
//* #validation-report "Validation Report" "Technical or business validation outcome"
//* #approval "Approval Letter / Positive Decision" "Final positive regulatory decision"
//* #rejection "Rejection / Negative Decision" "Final negative regulatory decision"
//* #withdrawal "Withdrawal by Applicant" "Applicant withdraws the procedure"
//* #annual-report "Periodic Safety Update Report / Annual Report" "PSUR, DSUR, or other periodic report"
//* #request-payment "Request Payment" "Requested payment of regulatory fees"

// Codes used by the ICSR and clinical trial application examples (see the Terminology page)
* #icsr-flow "ICSR workflow" "Grouping: Tasks for ICSR"
* #icsr-flow #icsr "Individual Case Safety Report" "Transmission of a single individual case safety report (ICSR) as an ICH E2B(R2) or E2B(R3) message. The input type gives the E2B version."
* #icsr-flow #susar "Suspected Unexpected Serious Adverse Reaction" "Transmission of a single SUSAR report from a clinical trial as an ICH E2B(R2) or E2B(R3) message. The input type gives the E2B version."
//* #clinical-trial-application "Clinical Trial Application" "Initial application to conduct a clinical trial (e.g., EU CTA under CTR, US IND, Health Canada CTA)."

// Codes used by the label negotiation example (scenario 4; see the Terminology page)
//* #variation-type-ii "Type II Variation" "Major change that may significantly affect quality, safety, or efficacy (EU)."
//* #labelling-comments "Labelling Comments" "Regulator returns comments on, or a revised version of, the proposed product information for the applicant to accept or counter-propose."
//* #labelling-agreement "Labelling Agreement" "Regulator and applicant confirm the final agreed product information text."


* #market-authorization "Market Authorization" "Grouping: Tasks for the marketing authorization lifecycle of a human biopharmaceutical product"

* #market-authorization #pre-submission "Pre-Submission" "Grouping: interactions before a marketing application is filed."
* #market-authorization #pre-submission #pre-submission-meeting-request "Pre-Submission Meeting Request" "Request for a meeting with the regulator before filing (e.g., FDA pre-NDA/Type B meeting, EMA pre-submission meeting, Health Canada pre-submission meeting)."
* #market-authorization #pre-submission #scientific-advice-request "Scientific Advice Request" "Request for scientific or regulatory advice on development or the planned application (e.g., EMA scientific advice / protocol assistance, FDA Type C meeting)."
* #market-authorization #pre-submission #eligibility-request "Eligibility Request" "Request to confirm eligibility for a procedure or route (e.g., EU centralised procedure eligibility)."
* #market-authorization #pre-submission #designation-request "Designation Request" "Request for a designation or expedited pathway (e.g., orphan, breakthrough therapy, PRIME, priority review)."
* #market-authorization #pre-submission #notice-of-intent-to-submit "Notice of Intent to Submit" "Notification of the planned submission date and scope of a marketing application."

* #market-authorization #marketing-application "Marketing Application (NDA/MAA)" "Grouping: the initial marketing application and the regulator activities that process it."
* #market-authorization #marketing-application #initial-submission "Initial Submission" "First submission of a new application or major variation."
* #market-authorization #marketing-application #new-drug-application "New Drug Application (NDA)" "Initial marketing application for a new drug (US NDA; analogous national applications)."
* #market-authorization #marketing-application #biologics-license-application "Biologics License Application (BLA)" "Initial marketing application for a biological product (US BLA)."
* #market-authorization #marketing-application #marketing-authorisation-application "Marketing Authorisation Application (MAA)" "Initial application for a marketing authorisation (e.g., EU centralised, decentralised, or national procedure)."
* #market-authorization #marketing-application #acknowledge-receipt "Acknowledge Receipt" "Regulator confirms the submission was received and is technically readable."
* #market-authorization #marketing-application #validate-submission "Validate Submission" "Technical and administrative validation (completeness) of a submission."
* #market-authorization #marketing-application #filing-review "Filing Review" "Regulator decides whether the application is sufficiently complete to be filed for review (e.g., FDA 60-day filing review)."
* #market-authorization #marketing-application #assess-application "Assess Application" "Scientific assessment of the application (quality, non-clinical, clinical, labelling)."
* #market-authorization #marketing-application #issue-regulatory-decision "Issue Regulatory Decision" "Preparation and issue of the final regulatory action (approval, complete response, refusal)."
* #market-authorization #marketing-application #resubmission "Resubmission" "Applicant resubmits an application after a negative or complete-response decision."
* #market-authorization #marketing-application #appeal "Appeal / Re-examination" "Applicant requests formal dispute resolution, re-examination, or appeal of a decision."
* #market-authorization #marketing-application #withdrawal "Withdrawal by Applicant" "Applicant withdraws the procedure."

* #market-authorization #payment "Payments" "Grouping: fees and payments linked to a regulatory procedure."
* #market-authorization #payment #assess-fee "Assess Fee" "Regulator determines the fee due for a submission."
* #market-authorization #payment #request-payment "Request Payment" "Requested payment of regulatory fees."
* #market-authorization #payment #fee-waiver-request "Fee Waiver or Reduction Request" "Applicant requests a waiver, reduction, or deferral of fees."
* #market-authorization #payment #refund-request "Refund Request" "Applicant requests a refund of fees paid."

* #market-authorization #question-and-response "Question and Response" "Grouping: questions raised during a procedure and the responses to them."
* #market-authorization #question-and-response #information-request "List of Questions / Information Request" "Regulator raises questions or requests additional data."
* #market-authorization #question-and-response #list-of-outstanding-issues "List of Outstanding Issues" "Regulator issues the issues that remain unresolved after the first round of questions (e.g., EU LoOI)."
* #market-authorization #question-and-response #clarification-request "Clarification Request" "Regulator requests a minor clarification that does not stop the clock."
* #market-authorization #question-and-response #response-timeline-extension-request "Response Timeline Extension Request" "Applicant requests more time to respond to questions (clock-stop extension)."

* #market-authorization #label-negotiation "Label Negotiation" "Grouping: agreement of the product information (labelling) text between applicant and regulator, for initial applications and post-approval label changes."
* #market-authorization #label-negotiation #labelling-proposal "Labelling Proposal" "Applicant submits proposed product information, or a counter-proposal, for review."
* #market-authorization #label-negotiation #labelling-comments "Labelling Comments" "Regulator returns comments on, or a revised version of, the proposed product information for the applicant to accept or counter-propose."
* #market-authorization #label-negotiation #labelling-agreement "Labelling Agreement" "Regulator and applicant confirm the final agreed product information text."

* #market-authorization #post-approval-change "Post-Approval Change" "Grouping: changes to an authorized product and lifecycle maintenance." 
* #market-authorization #post-approval-change #supplement "Supplement / Variation" "Post-authorization change (Type IA, IB, II, extension, etc.)."
* #market-authorization #post-approval-change #variation-type-ia "Type IA Variation" "Minor 'do and tell' change notified after implementation (EU)."
* #market-authorization #post-approval-change #variation-type-ib "Type IB Variation" "Minor, post-approval change to a medicinal product's marketing authorization that has minimal impact on quality, safety, or efficacy"
* #market-authorization #post-approval-change #variation-type-ii "Type II Variation" "Major change that may significantly affect quality, safety, or efficacy (EU)."
* #market-authorization #post-approval-change #line-extension "Line Extension" "Extension of a marketing authorisation (e.g., new strength, pharmaceutical form, or route)."
* #market-authorization #post-approval-change #prior-approval-supplement "Prior Approval Supplement (PAS)" "Major change requiring approval before distribution (US)."
* #market-authorization #post-approval-change #cbe-30 "Changes Being Effected in 30 Days (CBE-30)" "Moderate change that may be distributed 30 days after receipt (US)."
* #market-authorization #post-approval-change #cbe-0 "Changes Being Effected (CBE-0)" "Moderate change that may be distributed on receipt (US)."
* #market-authorization #post-approval-change #annual-report "Annual / Periodic Report (Authorized Product)" "Periodic report for an authorized product (e.g., PSUR/PBRER, US NDA/BLA annual report). Clinical-trial annual reports use annual-safety-report."
* #market-authorization #post-approval-change #renewal "Renewal" "Renewal of a marketing authorisation."
* #market-authorization #post-approval-change #marketing-authorisation-transfer "Marketing Authorisation Transfer" "Transfer of a marketing authorisation to a new holder."

* #clinical-trial "Clinical Trial" "Grouping: regulatory interactions for clinical trials of human biopharmaceutical products."
* #clinical-trial #clinical-trial-application "Clinical Trial Application" "Initial application to conduct a clinical trial (e.g., EU CTA under CTR, US IND, Health Canada CTA)."
* #clinical-trial #add-member-state "Addition of Member State Concerned" "Extension of an authorized trial to an additional member state (EU CTR)."
* #clinical-trial #substantial-modification "Substantial Modification / Protocol Amendment" "Change likely to substantially affect participant safety or rights, or data reliability; requires authorization (EU) or amendment submission (US)."
* #clinical-trial #non-substantial-modification "Non-Substantial Modification" "Change that does not require authorization but must be recorded or notified."
* #clinical-trial #information-amendment "Information Amendment" "Submission of essential new information that is not a protocol amendment (US IND)."
* #clinical-trial #trial-start-notification "Trial Start Notification" "Notification of start of trial or first participant visit."
* #clinical-trial #end-of-recruitment-notification "End of Recruitment Notification" "Notification that recruitment has ended."
* #clinical-trial #temporary-halt-notification "Temporary Halt Notification" "Notification that the trial has been temporarily halted."
* #clinical-trial #restart-request "Restart After Temporary Halt" "Request to restart a trial after a temporary halt."
* #clinical-trial #early-termination-notification "Early Termination Notification" "Notification that the trial ended early."
* #clinical-trial #end-of-trial-notification "End of Trial Notification" "Notification that the trial has ended."
* #clinical-trial #urgent-safety-measure "Urgent Safety Measure" "Notification of an urgent safety measure taken to protect participants."
* #clinical-trial #serious-breach-notification "Serious Breach Notification" "Notification of a serious breach of the protocol or GCP."
* #clinical-trial #annual-safety-report "Annual Safety Report (Clinical Trial)" "Annual report for an investigational product under clinical development (e.g., DSUR, US IND annual report). Authorized-product periodic reports use annual-report."
* #clinical-trial #clinical-trial-results-summary "Clinical Trial Results Summary" "Summary of results (and lay summary) after the end of the trial."
* #clinical-trial #clinical-hold "Clinical Hold" "Regulator orders a delay or suspension of a proposed or ongoing trial (US IND)."
* #clinical-trial #clinical-hold-response "Complete Response to Clinical Hold" "Sponsor responds to all clinical hold issues and requests that the hold be lifted."
