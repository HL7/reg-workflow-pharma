CodeSystem: RWIpharmaTaskInputOutputTypeExample
Id: rwipharma-task-input-output-type
Title: "Example RWI-pharma Task Input and Output Types"
Description: "Example Types of documents and data exchanged as Task inputs and outputs. Inputs come from the requester; outputs come from the Task owner."
* ^caseSensitive = true
* ^status = #active
* ^experimental = false

* ^property[0].code = #RWI-Pharma-Domain
* ^property[=].type = #string
* ^property[=].description = "Indicates the workflow domain where the concept is most expected to be used."
* ^property[+].code = #RWI-Pharma-Direction
* ^property[=].type = #string
* ^property[=].description = "Indicates whether the concept is used as a Task input (from the requester) or a Task output (from the owner)."


// Shared
* #cover-letter "Cover Letter" "Letter describing the submission and its contents."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #application-form "Application Form" "Completed regional application form."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #validation-report "Validation Report" "Outcome of technical or administrative validation."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
// Clinical trials
* #protocol "Protocol" "Clinical trial protocol (or amended protocol)."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #request-for-information "Request for Information" "Questions from the regulator during assessment of a trial."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #response-to-questions "Response to Questions" "Applicant's response document to a list of questions."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #authorisation-decision "Authorisation Decision" "Decision on a clinical trial application or modification."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
// ICSR
* #icsr-e2b-r2 "ICSR (E2B(R2))" "A single individual case safety report as an ICH E2B(R2) XML message."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #icsr-e2b-r3 "ICSR (E2B(R3))" "A single individual case safety report as an ICH E2B(R3) XML message."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #susar-e2b-r2 "SUSAR (E2B(R2))" "A single SUSAR report from a clinical trial as an ICH E2B(R2) XML message."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #susar-e2b-r3 "SUSAR (E2B(R3))" "A single SUSAR report from a clinical trial as an ICH E2B(R3) XML message."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #icsr-e2b-r2-acklog "ICSR E2B(R2) Acknowledgment Log" "ICH E2B(R2) acknowledgment message (ichicsrack) returned for an ICSR, with the transmission and report acknowledgment codes and any errors."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #icsr-e2b-r3-acklog "ICSR E2B(R3) Acknowledgment Log" "ICH E2B(R3) acknowledgment message returned for an ICSR, with the transmission (ACK.A.4) and report (ACK.B.r.6) acknowledgment codes and any errors."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #susar-e2b-r2-acklog "SUSAR E2B(R2) Acknowledgment Log" "ICH E2B(R2) acknowledgment message (ichicsrack) returned for a SUSAR, with the transmission and report acknowledgment codes and any errors."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #susar-e2b-r3-acklog "SUSAR E2B(R3) Acknowledgment Log" "ICH E2B(R3) acknowledgment message returned for a SUSAR, with the transmission (ACK.A.4) and report (ACK.B.r.6) acknowledgment codes and any errors."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
// Market authorization: label negotiation (scenario 4)
* #change-description "Change Description and Justification" "Description of the proposed change, with current vs proposed comparison and justification."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #epi-bundle "ePI Bundle" "Electronic product information as a FHIR document Bundle."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #proposed-labelling "Proposed Labelling" "Proposed product information (e.g., annotated ePI, annotated PDF or Word)."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #labelling-comments "Labelling Comments" "Regulator’s comments on, or revised version of, proposed labelling."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #approved-labelling "Approved Labelling" "Final agreed product information."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #approval-letter "Approval Letter" "Letter granting approval or authorization."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"

// Input and output types from the Terminology page not used by the IG's examples
* #supporting-document "Supporting Document" "Any other document supporting the Task."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #acknowledgment-of-receipt "Acknowledgment of Receipt" "Confirmation that the submission was received."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #assessment-report "Assessment Report" "Regulator’s assessment of the submission."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #decision-letter "Decision Letter" "Formal communication of the regulatory decision."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #questionnaire "Questionnaire" "Structured list of questions."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #questionnaire-response "Questionnaire Response" "Structured answers to a questionnaire."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #correspondence "Correspondence" "General correspondence between the parties."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #meeting-request-letter "Meeting Request Letter" "Request for a meeting, with proposed format and date."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #briefing-package "Briefing Package" "Background document and the sponsor’s questions for a meeting or advice request."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #preliminary-responses "Preliminary Responses" "Regulator’s preliminary written answers to meeting questions."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #meeting-minutes "Meeting Minutes" "Final record of a meeting or advice outcome."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #designation-decision "Designation Decision" "Decision on a designation or eligibility request."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #ctd-sequence "CTD Sequence" "An CTD submission sequence (backbone and documents)."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #cmc-documents "CMC Documents" "Chemistry, manufacturing, and controls documentation."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #stability-data "Stability Data" "Stability study data and summaries."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #clinical-study-report "Clinical Study Report" "Clinical study report supporting the application."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #risk-management-plan "Risk Management Plan" "Risk management plan or REMS."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #invoice "Invoice" "Fee invoice issued by the regulator."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #proof-of-payment "Proof of Payment" "Evidence that the fee has been paid."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #fee-waiver-justification "Fee Waiver Justification" "Justification for a fee waiver, reduction, or deferral."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #payment-receipt "Payment Receipt" "Regulator’s confirmation that payment was received."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #list-of-questions "List of Questions" "Questions or information request from the regulator."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #complete-response-letter "Complete Response Letter" "Letter describing the deficiencies that prevent approval."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
* #protocol-synopsis "Protocol Synopsis" "Summary of the protocol."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #investigators-brochure "Investigator’s Brochure" "Investigator’s brochure."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #impd "Investigational Medicinal Product Dossier" "IMPD or equivalent quality/non-clinical/clinical data for the investigational product."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #informed-consent-form "Informed Consent Form" "Participant information sheet and informed consent form."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #modification-description "Modification Description" "Description and justification of a modification, with tracked changes."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #dsur "DSUR" "Development Safety Update Report."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #results-summary "Results Summary" "Summary of clinical trial results."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #lay-summary "Lay Summary" "Summary of results for a lay audience."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Input"
* #clinical-hold-letter "Clinical Hold Letter" "Letter describing the reasons for a clinical hold."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Direction
  * ^property[=].valueString = "Output"
