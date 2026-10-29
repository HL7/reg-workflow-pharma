<!-- RWI-pharma TASK PAGE -->
<div style="margin-bottom:32px;">
  <!--h2 style="font-size:1.7em; font-weight:800; color:#111827; margin-bottom:10px;">RWI-pharma Task Structure</h2-->
  <p style="font-size:.95em; color:#6b7280; line-height:1.6; max-width:640px;">The Task resource is the universal envelope and workflow engine for all biopharmaceutical regulatory interactions — Each request (a submission, a question, a payment request) is a Task. As the work progresses, the same Task is updated: its status changes and responses and decisions are added as outputs, while its <code>Task.id</code> stays the same.</p>
</div>

<div style="background:linear-gradient(135deg,#eff6ff,#faf5ff); border:1px solid #bfdbfe; border-radius:12px; padding:20px 24px; margin-bottom:16px;">
  <div style="font-weight:700; color:#003087; font-size:.92em; margin-bottom:6px;">For Business Readers</div>
  <p style="font-size:.85em; color:#374151; line-height:1.6; margin:0;">Think of a Task as a <strong>regulatory envelope</strong>. When you submit an application, you create a Task containing references to your documents. When the regulator has questions, they create a new Task assigned to you. When the decision is made, the original Task is completed with the decision letter attached. Each Task has a status that progresses through the lifecycle — giving both sides real-time visibility. The envelope keeps the same tracking number (its <code>Task.id</code>) from submission to decision. Each update is a new version of the same envelope, never a new envelope.</p>
</div>

<div style="display:flex; gap:8px; flex-wrap:wrap; margin-bottom:32px;">
  <a href="Task-scenario1-01-initial-submission.html" style="text-decoration:none; background:#eff6ff; border:1px solid #bfdbfe; border-radius:6px; padding:6px 12px; font-size:.8em; font-weight:600; color:#1d4ed8;">📤 Initial Submission</a>
  <a href="Task-scenario1-05-technical-question.html" style="text-decoration:none; background:#fff7ed; border:1px solid #fed7aa; border-radius:6px; padding:6px 12px; font-size:.8em; font-weight:600; color:#c2410c;">❓ Questions</a>
  <a href="Task-scenario1-06-technical-response.html" style="text-decoration:none; background:#ecfdf5; border:1px solid #a7f3d0; border-radius:6px; padding:6px 12px; font-size:.8em; font-weight:600; color:#047857;">💬 Response (question Task, v2)</a>
  <a href="Task-scenario1-07-final-decision.html" style="text-decoration:none; background:#faf5ff; border:1px solid #e9d5ff; border-radius:6px; padding:6px 12px; font-size:.8em; font-weight:600; color:#7e22ce;">📩 Decision</a>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:0 0 24px;"/>

The following are examples of Tasks with synthetic content: <a href="Task-scenario1-01-initial-submission.html">Initial Submission</a>, <a href="Task-scenario1-05-technical-question.html">Questions</a>, <a href="Task-scenario1-06-technical-response.html">Response (question Task, v2)</a>, and <a href="Task-scenario1-07-final-decision.html">Decision</a>.

The following table provides an overview of the key elements of the RWI-pharma Task resource. For a technical description of the Task resource, see the <a href="StructureDefinition-rwi-pharma-task.html">RWI-pharma Task profile</a>.

<style>
.apix-table { border-collapse: collapse; width: 100%; margin: 1.5em 0; }
.apix-table th, .apix-table td { border: 1px solid #d3d3d3; padding: 10px; text-align: left; vertical-align: top; }
.apix-table th { background-color: #f0f0f0; font-weight: bold; }
.apix-table tr:nth-child(even) { background-color: #f9f9f9; }
</style>

<table class="apix-table">
<thead>
<tr>
<th>Element</th>
<th>Cardinality (RWI-pharma)</th>
<th>Value / Example</th>
<th>Purpose / Notes</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>Task.id</code></td>
<td>1..1</td>
<td>Assigned by the server when the Task is created</td>
<td>The Task's logical identity. It never changes for the life of the Task: every update, whether a status or business-status change or adding outputs, is a new version (<code>meta.versionId</code>) of the same <code>Task.id</code>. Never create a new Task to record progress or return documents. See <a href="#task-identifiers">Task Identity and Versions</a>.</td>
</tr>
<tr>
<td><code>Task.meta</code></td>
<td>1..1</td>
<td>• <code>versionId</code> (Mandatory)<br>• <code>lastUpdated</code> (Mandatory)<br>• <code>profile</code> (Fixed)</td>
<td>Technical metadata for versioning and conformance. <code>versionId</code> increases with every update of the same <code>Task.id</code>.</td>
</tr>
<tr>
<td><code>Task.text</code></td>
<td>1..1</td>
<td>Narrative description</td>
<td>Free text description of the task for human readers</td>
</tr>
<tr>
<td><code>Task.identifier</code></td>
<td>1..*</td>
<td>• Canonical Task UUID (mandatory)<br>• Procedure-scoped number (optional), e.g. <code>EMEA/H/C/001234/II/0045</code></td>
<td>Technical ID + Official Procedure Number, useful in precise filtering of status‑change notifications</td>
</tr>
<tr>
<td><code>Task.status</code></td>
<td>1..1</td>
<td><code>draft | requested | received | accepted | rejected | in-progress | on-hold | completed | cancelled | entered-in-error</code></td>
<td>Drives the RWI-pharma state machine and UI</td>
</tr>
<tr>
<td><code>Task.statusReason</code></td>
<td>0..1</td>
<td>CodeableConcept from RWI-pharma RejectionReason ValueSet</td>
<td>Mandatory when <code>status = rejected</code> or <code>cancelled</code></td>
</tr>
<tr>
<td><code>Task.intent</code></td>
<td>1..1</td>
<td><code>proposal</code></td>
<td>Fixed value for all regulatory Tasks</td>
</tr>
<tr>
<td><code>Task.priority</code></td>
<td>0..1</td>
<td><code>routine | urgent | asap | stat</code></td>
<td>Used for accelerated/conditional procedures</td>
</tr>
<tr>
<td><code>Task.code</code></td>
<td>1..1</td>
<td>From RWI-pharma TaskCode ValueSet, e.g.<br>• <code>initial-maa</code><br>• <code>variation-type-ia</code><br>• <code>validation-question</code><br>• <code>response-to-question</code><br>• <code>approval-letter</code></td>
<td>Defines the regulatory message type and triggers specific business rules</td>
</tr>
<tr>
<td><code>Task.for</code></td>
<td>0..1</td>
<td>Reference to <code>MedicinalProductDefinition</code> or <code>RegulatedAuthorization</code> or <code>Group</code> or <code>List</code></td>
<td>Identifies the medicinal product(s) that is/are the subject of the process. Use Group or List FHIR Resource for multiple products.</td>
</tr>
<tr>
<td><code>Task.requestedPeriod</code></td>
<td>0..1</td>
<td><code>start</code> = Clock Start<br><code>end</code> = Deadline</td>
<td>Regulatory clock management</td>
</tr>
<tr>
<td><code>Task.input</code></td>
<td>0..*</td>
<td>type from the domain Task input value sets (e.g. <code>cover-letter</code>), see <a href="terminology.html">Terminology</a><br>valueReference = Reference(DocumentReference)</td>
<td>Primary mechanism to attach submission content, or for a Regulator to ask questions or make requests. Can reference DocumentReferences.</td>
</tr>
<tr>
<td><code>Task.output</code></td>
<td>0..*</td>
<td>type from the domain Task output value sets (e.g. <code>validation-report</code>), see <a href="terminology.html">Terminology</a><br>valueReference = Reference(DocumentReference)</td>
<td>Used by the regulator to return assessment reports, decisions, etc. Or, used by Applicant to provide responses to Regulator questions or requests. Can reference DocumentReferences. Outputs are added to the existing Task as a new version. Returning a document never creates a new Task.</td>
</tr>
<tr>
<td><code>Task.groupIdentifier</code></td>
<td>1..1</td>
<td>Procedure identifier, e.g. <code>PROC-2025-00047</code></td>
<td>Identical across every Task in the same regulatory procedure</td>
</tr>
<tr>
<td><code>Task.basedOn</code></td>
<td>0..*</td>
<td>Reference to the parent Task (e.g. a question Task points to the submission Task), ordered lineage of Tasks (oldest → newest).</td>
<td>The element is an ordered array with the most distant ancestor Task as the first Task of the array (e.g. an initial request for review). The parent Task will be in the last position of the array.</td> 
</tr>
<tr>
<td><code>Task.partOf</code></td>
<td>0..*</td>
<td>Reference to a set of Tasks </td>
<td>Explicitly can build threads and hierarchies of Task to be performed as one set.</td> 
</tr>
<tr>
<td><code>Task.requester</code></td>
<td>1..1</td>
<td>Organization that initiated the task</td>
<td>Fixed for the entire procedure lifecycle</td>
</tr>
<tr>
<td><code>Task.owner</code></td>
<td>0..1</td>
<td>Organization responsible for fulfilling the Task</td>
<td>Designated performer Organization (e.g. Applicant or Regulator). In FHIR, the Task.owner data element is defined as the entity responsible for managing task execution and status, having the "Performer; Executer" role. In this IG, it is  additionally the Organization which controls the Task.status and which indicates Task completion. e.g. A Regulator is the Task.owner of an initial application Task to review an application. The Regulator determines if the application Task is complete, noting the outcome with Task.output. An Applicant would be the the Organization in Task.owner for a Task assigned to the Applicant by the Regulator. Upon the Applicant's completion of the Task, and the Applicant providing a response in Task.output and changing status to 'complete,' the Regulator determines if an additional Task or child Task is necessary for further clarification.</td> 
</tr>
<tr>
<td><code>Task.performer</code></td>
<td>0..1</td>
<td>Organization or individual producing/performing the task</td>
<td>Organization or individual who performed the task. Can be different from the Task.owner.</td>
</tr>
<tr>
<td><code>Task.businessStatus</code></td>
<td>0..1</td>
<td>Detailed regulatory status (e.g. <code>validation-successful</code>, <code>clock-stop</code>), see <a href="terminology.html">Terminology</a></td>
<td>Enables detailed process analytics and clock-stop tracking</td>
</tr>
<tr>
<td><code>Task.authoredOn</code></td>
<td>1..1</td>
<td>Date/time the sender created the Task</td>
<td>Starting point for regulatory cycle-time metrics</td>
</tr>
</tbody>
</table>

### Task Identity and Versions {#task-identifiers}
A Task is created once, when a request is made, and is then updated as the work progresses. Its `Task.id` never changes. Each update creates a new version of the same Task, recorded in `meta.versionId`. On a FHIR server, `GET Task/[id]` returns the current state and `GET Task/[id]/_history` returns every state.

| | Changes when the status changes? | Changes when outputs are added? | Purpose |
|---|---|---|---|
| `Task.id` | **Never** | **Never** | The resource. Every party, notification and reference points to it. |
| `meta.versionId` | **Every update** | **Every update** | Which state of the Task you are looking at |
| `Task.identifier` | No (identifiers can be added, such as the regulator's procedure number) | No | Business identity, used to filter notifications |
| `Task.groupIdentifier` | No | No | Ties every Task in one procedure together |

**Update the same Task** when the same request moves forward: status, business status, outputs (responses, reports, decisions), owner, or the clock.

**Create a new Task** only for a new request (a question, an invoice, a labelling round), or after a terminal state (for example, a resubmission after `rejected`). Link it to the original with `basedOn` and give it the same `groupIdentifier`.

<div class="markdown-alert markdown-alert-note">
  <p class="markdown-alert-title">Note</p>
  <p>An implementation guide cannot publish two examples with the same id. The scenario examples therefore show each version of a Task as a separate example instance. Each example's description says which Task and version it shows, and on a server those examples are versions of one Task with one <code>Task.id</code>.</p>
</div>

### Linking Tasks
Tasks in the same procedure are connected by:
1. `Task.groupIdentifier`: a common UUID shared by all Tasks within a regulatory activity.
2. `Task.identifier`: the regulator's procedure or application number, once assigned.
3. `Task.basedOn`: links a child Task (for example a question) to its parent Task.
4. `Task.partOf`: indicates a set of Tasks performed together.

### Task Status
In addition to the identifiers mentioned above, RWI-pharma uses **Task Status** ([see here for the Task Status Valueset](http://hl7.org/fhir/ValueSet/task-status)) to drive the the regulatory workflow.

The following table lists each status and its purpose throughout the workflow.

<style>
  .apix-table { border-collapse: collapse; width: 100%; margin: 1.5em 0; }
  .apix-table th, .apix-table td { border: 1px solid #d3d3d3; padding: 10px; text-align: left; vertical-align: top; }
  .apix-table th { background-color: #f0f0f0; font-weight: bold; }
  .apix-table tr:nth-child(even) { background-color: #f9f9f9; }
</style>

<table class="apix-table">
  <thead>
    <tr>
      <th>Code</th>
      <th>Display</th>
      <th>Meaning in RWI-pharma Regulatory Context</th>
    </tr>
  </thead>
  <tbody>
    <tr><td><strong>draft</strong></td><td>Draft</td><td>Task created locally by company, not yet submitted</td></tr>
    <tr><td><strong>requested</strong></td><td>Requested</td><td>Company has POSTed the Task to the regulator</td></tr>
    <tr><td><strong>received</strong></td><td>Received</td><td>Regulator server has received the Task (auto-transition)</td></tr>
    <tr><td><strong>accepted</strong></td><td>Accepted</td><td>Gateway/technical validation passed</td></tr>
    <tr><td><strong>rejected</strong></td><td>Rejected</td><td>Fatal validation failure → procedure terminated</td></tr>
    <tr><td><strong>in-progress</strong></td><td>In Progress</td><td>Scientific/regulatory assessment ongoing</td></tr>
    <tr><td><strong>on-hold</strong></td><td>On Hold</td><td>Clock stopped – regulator has raised questions</td></tr>
    <tr><td><strong>completed</strong></td><td>Completed</td><td>Procedure complete and regulatory decision delivered</td></tr>
    <tr><td><strong>cancelled</strong></td><td>Cancelled</td><td>Company withdraws the procedure</td></tr>
    <tr><td><strong>entered-in-error</strong></td><td>Entered in Error</td><td>Task created by mistake</td></tr>
  </tbody>
</table>

<div class="markdown-alert markdown-alert-note">
  <p class="markdown-alert-title">Note</p>
  <p>The FHIR Task statuses <strong>ready</strong> and <strong>failed</strong> are not used in the core RWI-pharma workflow.</p>
</div>

#### Typical State Transitions in a Regulatory Procedure
The following table shows how the status of a Task changes during a regulatory activity. Every row is an update to the same Task (same `Task.id`, new `meta.versionId`), except where a new child Task is created.

<table class="apix-table">
  <thead>
    <tr>
      <th>Status Change From → To</th>
      <th>Trigger / Example</th>
      <th>Who updates</th>
      <th>Subscription notification sent?</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>draft → requested</td><td>Company finalises and POSTs the Task</td><td>Company</td><td>Yes</td></tr>
    <tr><td>requested → received</td><td>Auto-receipt on regulator server</td><td>Regulator</td><td>Yes</td></tr>
    <tr><td>received → accepted</td><td>Gateway validation successful</td><td>Regulator</td><td>Yes (validation passed)</td></tr>
    <tr><td>received → rejected</td><td>Gateway validation fails</td><td>Regulator</td><td>Yes (rejection)</td></tr>
    <tr><td>accepted → in-progress</td><td>Assessment team begins review</td><td>Regulator</td><td>Yes</td></tr>
    <tr><td>in-progress → on-hold</td><td>Regulator creates a <strong>new child Task</strong> with questions (the original Task is put on hold)</td><td>Regulator</td><td>Yes (clock-stop)</td></tr>
    <tr><td>on-hold → in-progress</td><td>Company responds → regulator restarts clock</td><td>Regulator</td><td>Yes (clock-restart)</td></tr>
    <tr><td>in-progress → completed</td><td>Decision letter added to <code>Task.output</code></td><td>Regulator</td><td>Yes (final decision)</td></tr>
    <tr><td>(unchanged)</td><td>Outputs added (for example an acknowledgment of receipt)</td><td>Task owner</td><td>Only if the Subscription's topic triggers on any update</td></tr>
    <tr><td>any → rejected</td><td>Scientific rejection</td><td>Regulator</td><td>Yes</td></tr>
    <tr><td>any → cancelled</td><td>Company withdraws</td><td>Company</td><td>Yes</td></tr>
  </tbody>
</table>
