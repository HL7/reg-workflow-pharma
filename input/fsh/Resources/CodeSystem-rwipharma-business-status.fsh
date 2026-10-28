CodeSystem: RWIpharmaBusinessStatusCS
Id: rwipharma-business-status
Title: "RWI-pharma Regulatory Business Status"
Description: "Code system for regulatory business status in RWI-pharma submissions"

* ^caseSensitive = true
* ^experimental = false

* ^property[0].code = #RWI-Pharma-Domain
* ^property[=].type = #string
* ^property[=].description = "Indicates the workflow domain where the concept is most expected to be used."

* #submitted "Submitted" "The application has been submitted by the applicant."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"  
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #received "Received" "The application or submission has been received by the regulator."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"

* #validation-successful "Validation Successful" "The technical and administrative validation has been completed successfully."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #validation-failed "Validation Failed" "The submission failed validation and cannot proceed."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #under-assessment "Under Assessment" "The submission is currently undergoing scientific review."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #clock-stop "Clock Stop" "The review timeline is paused, typically waiting for applicant response to questions."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #clock-restart "Clock Restart" "The review timeline has resumed following receipt of a response."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #consolidated-review "Consolidated Review" "Comments from multiple assessors are being consolidated."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #decision-pending "Decision Pending" "The assessment is complete and the final decision is being prepared."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #approved "Approved" "The application has been approved."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #rejected "Rejected" "The application has been rejected."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #withdrawn "Withdrawn" "The application has been withdrawn by the applicant."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #payment-requested "Payment Requested" "A fee payment has been requested by the regulator."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #payment-received "Payment Received" "The fee payment has been received and confirmed."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"

// Statuses used by the ICSR and clinical trial application examples (see the Terminology page)
* #accepted "Accepted" "The safety report passed validation and was loaded by the receiver; the acknowledgment log has been returned."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"  
* #complete "Complete" "Processing of the accepted safety report is complete and no further action is expected on the Task."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "ICSR"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"  
* #request-for-information-issued "Request for Information Issued" "The regulator has sent a request for information to the sponsor."
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"  
* #authorised "Authorised" "The trial or modification has been authorised."
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"  
  
* #authorised-with-conditions "Authorised with Conditions" "The trial or modification has been authorised subject to conditions." 
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #not-authorised "Not Authorised" "The trial or modification has not been authorised." 
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #may-proceed "May Proceed" "The review period has ended without objection and the trial may proceed (e.g., US IND 30-day review)." 
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #on-clinical-hold "On Clinical Hold" "The trial is on clinical hold." 
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #clinical-hold-lifted "Clinical Hold Lifted" "The clinical hold has been lifted." 
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #trial-ongoing "Trial Ongoing" "The trial has started and is ongoing." 
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #recruitment-ended "Recruitment Ended" "Recruitment has ended." 
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #temporarily-halted "Temporarily Halted" "The trial is temporarily halted." 
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #trial-ended "Trial Ended" "The trial has ended." 
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #terminated-early "Terminated Early" "The trial was terminated early." 
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #results-submitted "Results Submitted" "The results summary has been submitted." 
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
  
// Statuses used by the label negotiation example (scenario 4; see the Terminology page)
* #labelling-comments-issued "Labelling Comments Issued" "The regulator has returned comments or a revised version to the applicant."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #counter-proposal-received "Counter-Proposal Received" "The applicant has returned a counter-proposal on the product information."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #response-received "Response Received" "The applicant’s response has been received."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #awaiting-applicant-response "Awaiting Applicant Response" "The regulator is waiting for the applicant to respond."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #labelling-agreed "Labelling Agreed" "Applicant and regulator have agreed the product information text."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"


// Statuses from the Market Authorization business status value set (RWI Pharma-ma-business-status-vs) and remaining shared terms (see the Terminology page)
* #receipt-acknowledged "Receipt Acknowledged" "Receipt has been formally acknowledged to the sender."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Shared"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
  * ^property[+].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Clinical Trial"
* #meeting-granted "Meeting Granted" "The requested meeting has been granted and scheduled."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #meeting-denied "Meeting Denied" "The requested meeting has been denied."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #written-response-only "Written Response Only" "The regulator will answer the meeting questions in writing instead of meeting."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #preliminary-responses-issued "Preliminary Responses Issued" "Preliminary written responses to the meeting questions have been issued."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #meeting-held "Meeting Held" "The meeting has taken place."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #minutes-issued "Minutes Issued" "Final meeting minutes or advice letter have been issued."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #designation-granted "Designation Granted" "The requested designation or eligibility has been granted or confirmed."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #designation-denied "Designation Denied" "The requested designation or eligibility has been denied."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #filing-review-underway "Filing Review Underway" "The regulator is deciding whether to file the application for review."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #filed-accepted-for-review "Filed — Accepted for Review" "The application has been filed and accepted for substantive review."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #refused-to-file "Refused to File" "The application was not accepted for review."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #complete-response-issued "Complete Response Issued" "The review cycle ended without approval; deficiencies were communicated (e.g., FDA complete response letter)."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #resubmission-received "Resubmission Received" "A resubmission following a complete response or refusal has been received."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #appeal-submitted "Appeal Submitted" "An appeal, re-examination, or dispute-resolution request has been submitted."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #appeal-under-review "Appeal Under Review" "The appeal is being reviewed."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #appeal-decision-issued "Appeal Decision Issued" "The outcome of the appeal has been issued."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #fee-assessment-underway "Fee Assessment Underway" "The regulator is determining the fee due."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #payment-overdue "Payment Overdue" "The fee payment was not received by the due date."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #fee-waiver-granted "Fee Waiver Granted" "The fee waiver, reduction, or deferral has been granted."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #fee-waiver-denied "Fee Waiver Denied" "The fee waiver, reduction, or deferral has been denied."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #refund-issued "Refund Issued" "A fee refund has been issued."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #questions-issued "Questions Issued" "Questions or an information request have been sent to the applicant."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #response-under-review "Response Under Review" "The regulator is reviewing the applicant’s response."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #response-accepted "Response Accepted" "The response resolves the questions raised."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #further-information-required "Further Information Required" "The response did not resolve all questions; further information is needed."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #extension-granted "Extension Granted" "A requested extension of the response timeline has been granted."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #extension-denied "Extension Denied" "A requested extension of the response timeline has been denied."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #labelling-under-review "Labelling Under Review" "The regulator is reviewing the proposed product information."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #notification-accepted "Notification Accepted" "A notified change (e.g., Type IA) has been accepted."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
* #change-implemented "Change Implemented" "The approved change has been implemented."
  * ^property[0].code = #RWI-Pharma-Domain
  * ^property[=].valueString = "Market Authorization"
