<!-- GETTING STARTED HEADER -->
<div style="margin-bottom:32px;">
  <p style="font-size:.95em; color:#6b7280; line-height:1.6; max-width:640px;">Five simple steps to connect any two parties in a regulatory exchange — industry to regulator, regulator to industry, regulator to regulator, or industry to industry. Each step builds on the previous one, so start at the top and work down. A descriptive workflow is included to provide context for the five steps.</p>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:0 0 32px;"/>

<!-- ========================================= -->
<!-- 5-STEP DETAILED WALKTHROUGH               -->
<!-- ========================================= -->

### Step 1: Connect via API

<!-- STEP 1: CONNECT -->
<div style="background:#fff; border:1px solid #bfdbfe; border-left:5px solid #2563eb; border-radius:10px; padding:28px 32px; margin-bottom:20px; position:relative;">
  <div style="display:flex; align-items:flex-start; gap:20px; flex-wrap:wrap;">
    <div style="flex-shrink:0;">
      <div style="width:56px; height:56px; border-radius:50%; background:linear-gradient(135deg,#eff6ff,#dbeafe); border:3px solid #2563eb; display:flex; align-items:center; justify-content:center; font-size:1.5em; font-weight:800; color:#2563eb;">1</div>
    </div>
    <div style="flex:1; min-width:260px;">
      <p style="font-size:.9em; color:#374151; line-height:1.65; margin-bottom:12px;">Register your <strong>Organization</strong> and <strong>Endpoint</strong> on the receiving party's FHIR server, whether that is a regulator or a company. This tells the other party who you are and where to send notifications back to you.</p>
      <div style="background:#f0f9ff; border-radius:6px; padding:10px 14px; margin-bottom:12px;">
        <div style="font-size:.78em; color:#0369a1; font-weight:600; margin-bottom:4px;">💡 Think of it like…</div>
        <div style="font-size:.82em; color:#374151; line-height:1.5;">Registering a shipping address before you can send or receive packages. You only do this once.</div>
      </div>
      <div style="font-size:.82em; color:#6b7280;">✅ <strong>Business benefit:</strong> One-time setup — connects your organization to any party, regulator or company, that supports RWI-pharma.</div>
      <div style="margin-top:10px;"><a href="rwipharmaorganizationEndpoint.html" style="font-size:.82em; color:#2563eb; font-weight:600; text-decoration:none;">Deep dive: Organization &amp; Endpoint →</a></div>
    </div>
  </div>
</div>

### Step 2: Stream Files as Binary

<!-- STEP 2: STREAM -->
<div style="background:#fff; border:1px solid #99f6e4; border-left:5px solid #0d9488; border-radius:10px; padding:28px 32px; margin-bottom:20px; position:relative;">
  <div style="display:flex; align-items:flex-start; gap:20px; flex-wrap:wrap;">
    <div style="flex-shrink:0;">
      <div style="width:56px; height:56px; border-radius:50%; background:linear-gradient(135deg,#f0fdfa,#ccfbf1); border:3px solid #0d9488; display:flex; align-items:center; justify-content:center; font-size:1.5em; font-weight:800; color:#0d9488;">2</div>
    </div>
    <div style="flex:1; min-width:260px;">
      <p style="font-size:.9em; color:#374151; line-height:1.65; margin-bottom:12px;">Upload any file type — <strong>PDF, DOCX, XML, JSON, data sets</strong> — to the receiving party's FHIR server as a <strong>Binary</strong> resource. Files are stored securely and accessed on-demand by the recipient.</p>
      <div style="background:#f0fdfa; border-radius:6px; padding:10px 14px; margin-bottom:12px;">
        <div style="font-size:.78em; color:#0f766e; font-weight:600; margin-bottom:4px;">💡 Think of it like…</div>
        <div style="font-size:.82em; color:#374151; line-height:1.5;">Netflix for documents. Instead of mailing a box of DVDs (a giant ZIP file), each document is streamed individually — the recipient only downloads what they need, when they need it.</div>
      </div>
      <div style="font-size:.82em; color:#6b7280;">✅ <strong>Business benefit:</strong> No more massive portal uploads. Sub-second processing instead of hours of waiting.</div>
      <div style="margin-top:10px;"><a href="architecture.html#binary-upload-guide-post-then-link" style="font-size:.82em; color:#0d9488; font-weight:600; text-decoration:none;">Deep dive: Binary upload (Post-then-Link) →</a></div>
    </div>
  </div>
</div>

### Step 3: Describe with DocumentReference (best practice)

<!-- STEP 3: DESCRIBE -->
<div style="background:#fff; border:1px solid #fed7aa; border-left:5px solid #ea580c; border-radius:10px; padding:28px 32px; margin-bottom:20px; position:relative;">
  <div style="display:flex; align-items:flex-start; gap:20px; flex-wrap:wrap;">
    <div style="flex-shrink:0;">
      <div style="width:56px; height:56px; border-radius:50%; background:linear-gradient(135deg,#fff7ed,#fed7aa); border:3px solid #ea580c; display:flex; align-items:center; justify-content:center; font-size:1.5em; font-weight:800; color:#ea580c;">3</div>
    </div>
    <div style="flex:1; min-width:260px;">
      <p style="font-size:.9em; color:#374151; line-height:1.65; margin-bottom:12px;">For each Binary uploaded, best practice is to create a <strong>DocumentReference</strong> resource that captures metadata — the file's <strong>category, version, type, and CTD section</strong>. This lets the recipient search, filter, and discover your documents without downloading them. In Step 4, these DocumentReferences are attached to a Task as inputs (if you created the Task) or outputs (if you are doing the work it asks for).</p>
      <div style="background:#fff7ed; border-radius:6px; padding:10px 14px; margin-bottom:12px;">
        <div style="font-size:.78em; color:#c2410c; font-weight:600; margin-bottom:4px;">💡 Think of it like…</div>
        <div style="font-size:.82em; color:#374151; line-height:1.5;">A library catalog card. The card describes the book (title, author, subject) so you can find it without reading every book on the shelf.</div>
      </div>
      <div style="font-size:.82em; color:#6b7280;">✅ <strong>Business benefit:</strong> Recipients instantly find the exact file they need, and see its type, author and security labels before downloading it. No more searching through ZIP files.</div>
      <div style="margin-top:10px;"><a href="rwipharmadocumentReference.html" style="font-size:.82em; color:#ea580c; font-weight:600; text-decoration:none;">Deep dive: DocumentReference →</a></div>
    </div>
  </div>
</div>

### Step 4: Orchestrate with Task

<!-- STEP 4: ORCHESTRATE -->
<div style="background:#fff; border:1px solid #e9d5ff; border-left:5px solid #7c3aed; border-radius:10px; padding:28px 32px; margin-bottom:20px; position:relative;">
  <div style="display:flex; align-items:flex-start; gap:20px; flex-wrap:wrap;">
    <div style="flex-shrink:0;">
      <div style="width:56px; height:56px; border-radius:50%; background:linear-gradient(135deg,#faf5ff,#e9d5ff); border:3px solid #7c3aed; display:flex; align-items:center; justify-content:center; font-size:1.5em; font-weight:800; color:#7c3aed;">4</div>
    </div>
    <div style="flex:1; min-width:260px;">
      <p style="font-size:.9em; color:#374151; line-height:1.65; margin-bottom:12px;">Create a <strong>FHIR Task</strong> resource to initiate and track a regulatory activity — <em>any type of regulatory activity for human biopharmaceutical products</em>. The Task carries the content (best practice: DocumentReferences) in both directions and progresses through status changes as the procedure advances.</p>
      <div style="background:#faf5ff; border-radius:6px; padding:10px 14px; margin-bottom:12px;">
        <div style="font-size:.78em; color:#7e22ce; font-weight:600; margin-bottom:4px;">💡 Think of it like…</div>
        <div style="font-size:.82em; color:#374151; line-height:1.5;">A FedEx tracking number. You create the shipment (Task), attach the packages (documents), and then both sender and receiver can track exactly where it is in the process at every step.</div>
      </div>
      <div style="background:#fff; border:1px solid #e9d5ff; border-radius:6px; padding:12px 16px; margin-bottom:12px;">
        <div style="font-size:.78em; font-weight:700; color:#7e22ce; margin-bottom:6px;">Inputs come from the requester, outputs from the owner</div>
        <div style="display:grid; grid-template-columns:1fr 1fr; gap:10px; margin-bottom:8px;">
          <div style="background:#faf5ff; border-radius:6px; padding:8px 12px;">
            <div style="font-size:.78em; font-weight:700; color:#374151;">Requester → <code>Task.input</code></div>
            <div style="font-size:.8em; color:#4b5563; line-height:1.5;">The party that creates the Task supplies what the work needs.</div>
          </div>
          <div style="background:#faf5ff; border-radius:6px; padding:8px 12px;">
            <div style="font-size:.78em; font-weight:700; color:#374151;">Owner → <code>Task.output</code></div>
            <div style="font-size:.8em; color:#4b5563; line-height:1.5;">The party that does the work returns the result.</div>
          </div>
        </div>
        <div style="font-size:.8em; color:#4b5563; line-height:1.55;"><strong>Example:</strong> on a Payment Task created by the regulator, the <em>invoice</em> is an input and the <em>proof of payment</em> returned by the applicant is an output. On a submission Task created by the applicant, the dossier documents are inputs and the regulator's decision letter is an output. See <a href="terminology.html">Terminology</a> for example input and output types.</div>
      </div>
      <div style="font-size:.82em; color:#6b7280; margin-bottom:8px;">✅ <strong>Business benefit:</strong> Every date and time is recorded. After the procedure, analyze and visualize cycle times across one or many regulatory activities.</div>
      <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:6px; padding:12px 16px; margin-bottom:12px;">
        <div style="font-size:.78em; font-weight:700; color:#374151; margin-bottom:6px;">What can you track?</div>
        <div style="display:flex; flex-wrap:wrap; gap:6px;">
          <span style="background:#eff6ff; border:1px solid #bfdbfe; color:#1d4ed8; padding:4px 10px; border-radius:4px; font-size:.75em; font-weight:600;">Clinical Trial Application</span>
          <span style="background:#ecfdf5; border:1px solid #a7f3d0; color:#047857; padding:4px 10px; border-radius:4px; font-size:.75em; font-weight:600;">NDA/MAA</span>
          <span style="background:#fff7ed; border:1px solid #fed7aa; color:#c2410c; padding:4px 10px; border-radius:4px; font-size:.75em; font-weight:600;">Shelf-life Update</span>
          <span style="background:#faf5ff; border:1px solid #e9d5ff; color:#7e22ce; padding:4px 10px; border-radius:4px; font-size:.75em; font-weight:600;">Label Negotiation</span>
          <span style="background:#fce7f3; border:1px solid #fbcfe8; color:#be185d; padding:4px 10px; border-radius:4px; font-size:.75em; font-weight:600;">Invoice Payment</span>
          <span style="background:#f0fdfa; border:1px solid #99f6e4; color:#0f766e; padding:4px 10px; border-radius:4px; font-size:.75em; font-weight:600;">Q&amp;A Exchange</span>
          <span style="background:#fffbeb; border:1px solid #fde68a; color:#92400e; padding:4px 10px; border-radius:4px; font-size:.75em; font-weight:600;">Decision Letter</span>
          <span style="background:#fef2f2; border:1px solid #fecaca; color:#b91c1c; padding:4px 10px; border-radius:4px; font-size:.75em; font-weight:600;">Adverse Event Report</span>
          <span style="background:#f0f9ff; border:1px solid #bae6fd; color:#0369a1; padding:4px 10px; border-radius:4px; font-size:.75em; font-weight:600;">Pre-submission Meeting</span>
        </div>
      </div>
      <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:6px; padding:12px 16px; margin-bottom:12px;">
        <div style="font-size:.78em; font-weight:700; color:#374151; margin-bottom:4px;">Task lifecycle</div>
        <p style="font-size:.8em; color:#6b7280; line-height:1.5; margin:0 0 4px;">As a regulatory activity progresses, the Task's status moves through these stages. Each transition is timestamped, creating a complete audit trail.</p>
        <div style="display:flex; align-items:center; justify-content:center; gap:0; margin-bottom:4px; flex-wrap:wrap; padding:10px 0 4px;">
  <div style="text-align:center; padding:0 8px;">
    <div style="width:18px; height:18px; border-radius:50%; background:#2563eb; margin:0 auto 8px;"></div>
    <div style="font-size:.78em; font-weight:700; color:#2563eb;">draft</div>
  </div>
  <div style="width:28px; height:2px; background:#d1d5db; flex-shrink:0;"></div>
  <div style="text-align:center; padding:0 8px;">
    <div style="width:18px; height:18px; border-radius:50%; background:#0d9488; margin:0 auto 8px;"></div>
    <div style="font-size:.78em; font-weight:700; color:#0d9488;">requested</div>
  </div>
  <div style="width:28px; height:2px; background:#d1d5db; flex-shrink:0;"></div>
  <div style="text-align:center; padding:0 8px;">
    <div style="width:18px; height:18px; border-radius:50%; background:#ea580c; margin:0 auto 8px;"></div>
    <div style="font-size:.78em; font-weight:700; color:#ea580c;">received</div>
  </div>
  <div style="width:28px; height:2px; background:#d1d5db; flex-shrink:0;"></div>
  <div style="text-align:center; padding:0 8px;">
    <div style="width:18px; height:18px; border-radius:50%; background:#f59e0b; margin:0 auto 8px;"></div>
    <div style="font-size:.78em; font-weight:700; color:#b45309;">accepted</div>
  </div>
  <div style="width:28px; height:2px; background:#d1d5db; flex-shrink:0;"></div>
  <div style="text-align:center; padding:0 8px;">
    <div style="width:18px; height:18px; border-radius:50%; background:#7c3aed; margin:0 auto 8px;"></div>
    <div style="font-size:.78em; font-weight:700; color:#7c3aed;">in-progress</div>
  </div>
  <div style="width:28px; height:2px; background:#d1d5db; flex-shrink:0;"></div>
  <div style="text-align:center; padding:0 8px;">
    <div style="width:18px; height:18px; border-radius:50%; background:#059669; margin:0 auto 8px;"></div>
    <div style="font-size:.78em; font-weight:700; color:#059669;">completed</div>
  </div>
</div>
        <div style="background:linear-gradient(135deg,#faf5ff,#eff6ff); border:1px solid #e9d5ff; border-radius:10px; padding:14px 18px; margin-bottom:0; display:flex; align-items:flex-start; gap:14px;">
  <div style="font-size:1.3em; flex-shrink:0;">📈</div>
  <div>
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Cycle-Time Analytics</div>
    <p style="font-size:.85em; color:#374151; line-height:1.6; margin:0;">Because every status change is timestamped, you can analyze the duration of each phase across one or many regulatory procedures. Visualize bottlenecks, benchmark SLA performance, and identify opportunities to accelerate time-to-market for your products.</p>
  </div>
</div>
      </div>
      <div style="margin-top:10px;"><a href="rwipharmatask.html" style="font-size:.82em; color:#7c3aed; font-weight:600; text-decoration:none;">Deep dive: RWI-pharma Task Structure →</a></div>
    </div>
  </div>
</div>

### Step 5: Subscribe for Real-Time Updates

<!-- STEP 5: SUBSCRIBE -->
<div style="background:#fff; border:1px solid #a7f3d0; border-left:5px solid #059669; border-radius:10px; padding:28px 32px; margin-bottom:32px; position:relative;">
  <div style="display:flex; align-items:flex-start; gap:20px; flex-wrap:wrap;">
    <div style="flex-shrink:0;">
      <div style="width:56px; height:56px; border-radius:50%; background:linear-gradient(135deg,#ecfdf5,#a7f3d0); border:3px solid #059669; display:flex; align-items:center; justify-content:center; font-size:1.5em; font-weight:800; color:#059669;">5</div>
    </div>
    <div style="flex:1; min-width:260px;">
      <p style="font-size:.9em; color:#374151; line-height:1.65; margin-bottom:12px;">Set up a <strong>Subscription</strong> to receive instant notifications whenever Tasks are updated as the regulatory activity progresses. Both parties subscribe — so both sides know immediately when something changes.</p>
      <div style="background:#ecfdf5; border-radius:6px; padding:10px 14px; margin-bottom:12px;">
        <div style="font-size:.78em; color:#047857; font-weight:600; margin-bottom:4px;">💡 Think of it like…</div>
        <div style="font-size:.82em; color:#374151; line-height:1.5;">Package delivery notifications. You don't need to keep checking the website — you get a push notification the moment your package moves to the next step.</div>
      </div>
      <div style="font-size:.82em; color:#6b7280;">✅ <strong>Business benefit:</strong> No more logging into portals to check status. Your system is notified automatically in real-time.</div>
      <div style="margin-top:10px;"><a href="subscriptions.html" style="font-size:.82em; color:#059669; font-weight:600; text-decoration:none;">Deep dive: Notifications →</a></div>
    </div>
  </div>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:0 0 32px;"/>

<!-- WORKFLOW (merged Workflow Overview + Workflow Deep-Dive) -->
### Workflow {#workflow}

<div style="margin-bottom:32px;">
  <!--h2 style="font-size:1.7em; font-weight:800; color:#111827; margin-bottom:10px;">Workflow</h2-->
  <p style="font-size:.95em; color:#6b7280; line-height:1.6; max-width:640px;">How RWI-pharma orchestrates a regulatory procedure — first the big picture, then a step-by-step technical walkthrough of a shelf-life update showing every FHIR resource exchange.</p>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:0 0 32px;"/>

<!-- HOW IT WORKS -->
<div style="background:linear-gradient(135deg,#eff6ff,#faf5ff); border:1px solid #bfdbfe; border-radius:12px; padding:28px 32px; margin-bottom:32px;">
  <div style="font-weight:700; color:#111827; font-size:1.05em; margin-bottom:10px;">How RWI-pharma Works — The Big Picture</div>
  <p style="font-size:.88em; color:#374151; line-height:1.7; margin:0;">RWI-pharma uses a <strong>Task-based</strong> workflow model. Every regulatory interaction — submissions, questions, decisions, payments — is represented as a FHIR <strong>Task</strong> resource. The lifecycle of a regulatory procedure is a series of Tasks, each with a status that progresses from <em>draft → requested → received → accepted → in-progress → completed</em>. Both parties subscribe to real-time notifications so they instantly know when something changes.</p>
</div>

<!-- NOTIFICATION MECHANISM -->
<div style="background:#fffbeb; border:1px solid #fde68a; border-radius:8px; padding:14px 18px; margin-bottom:32px; font-size:.85em; color:#78350f; display:flex; gap:10px; align-items:flex-start;">
  <span style="flex-shrink:0; font-size:1rem;">⚠️</span>
  <span><strong>Key Principle:</strong> The Regulator does not directly "send" messages to the Company. Instead, the Regulator updates the Task on the server. The Company, having <a href="subscriptions.html" style="color:#92400e; font-weight:600;">subscribed</a> to that Task, receives an automatic notification whenever a change occurs.</span>
</div>

<!-- FOUR PHASES -->
#### The Four Phases


<div style="display:grid; grid-template-columns:1fr 1fr 1fr 1fr; gap:14px; margin-bottom:32px;">
  <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #2563eb; border-radius:8px; padding:20px;">
    <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#2563eb; margin-bottom:6px;">Phase 1</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Submission & Validation</div>
    <ol style="font-size:.82em; color:#4b5563; line-height:1.7; padding-left:16px; margin:0;">
      <li>Company registers and authenticates</li>
      <li>Company uploads documents (PDFs, FHIR Bundles)</li>
      <li>Company creates DocumentReferences (metadata)</li>
      <li>Company posts the Task (the "orchestrator")</li>
      <li>Regulator validates the package</li>
    </ol>
  </div>
  <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #f59e0b; border-radius:8px; padding:20px;">
    <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#b45309; margin-bottom:6px;">Phase 2</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Payment</div>
    <ol style="font-size:.82em; color:#4b5563; line-height:1.7; padding-left:16px; margin:0;">
      <li>Regulator issues a Payment Request (Task)</li>
      <li>Company submits Proof of Payment</li>
      <li>Regulator verifies and completes Payment Task</li>
    </ol>
  </div>
  <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #10b981; border-radius:8px; padding:20px;">
    <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#10b981; margin-bottom:6px;">Phase 3</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Review & Questions</div>
    <ol style="font-size:.82em; color:#4b5563; line-height:1.7; padding-left:16px; margin:0;">
      <li>Regulator conducts technical review</li>
      <li>Regulator issues Questions (as new Tasks)</li>
      <li>Company provides Responses (in Task.output)</li>
      <li>Iterative Q&A until all issues resolved</li>
    </ol>
  </div>
  <div style="background:#fff; border:1px solid #e5e7eb; border-top:3px solid #8b5cf6; border-radius:8px; padding:20px;">
    <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#8b5cf6; margin-bottom:6px;">Phase 4</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">Decision</div>
    <ol style="font-size:.82em; color:#4b5563; line-height:1.7; padding-left:16px; margin:0;">
      <li>Regulator completes the original Task</li>
      <li>Decision letter attached to Task.output</li>
      <li>Company receives instant notification</li>
      <li>Full audit trail preserved in Provenance</li>
    </ol>
  </div>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:0 0 32px;"/>

<!-- VISUAL WORKFLOW DIAGRAM -->
#### Workflow Diagram

<p style="font-size:.88em; color:#6b7280; margin-bottom:16px;">The following diagram shows the complete lifecycle of a regulatory procedure through RWI-pharma — illustrating the back-and-forth exchange between Company and Regulator across all four phases.</p>

<div style="text-align:center; margin:20px 0 16px;">
  <img src="workflow-overview-diagram.png" alt="RWI-pharma Workflow — Ping-Pong Diagram showing the four-phase exchange between Company and Regulator" style="max-width:680px; width:100%; border-radius:10px; border:1px solid #e5e7eb;">
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:16px 0 32px;"/>

<!-- KEY CONCEPTS -->
#### Key Concepts


<div style="display:grid; grid-template-columns:1fr 1fr; gap:14px; margin-bottom:32px;">
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:18px;">
    <div style="font-weight:700; color:#003087; margin-bottom:6px; font-size:.9em;">📋 Task = Regulatory Envelope</div>
    <p style="font-size:.85em; color:#4b5563; line-height:1.6; margin:0;">Every interaction (submission, question, decision) is a Task. Tasks carry metadata (who, what, when) and reference documents via <code>Task.input</code> and <code>Task.output</code>.</p>
  </div>
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:18px;">
    <div style="font-weight:700; color:#003087; margin-bottom:6px; font-size:.9em;">📄 DocumentReference = Library Card</div>
    <p style="font-size:.85em; color:#4b5563; line-height:1.6; margin:0;">Each uploaded file gets a metadata wrapper (title, type, CTD section). The regulator discovers files through the Task, downloading the payload only when needed.</p>
  </div>
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:18px;">
    <div style="font-weight:700; color:#003087; margin-bottom:6px; font-size:.9em;">🔔 Subscription = Real-Time Alert</div>
    <p style="font-size:.85em; color:#4b5563; line-height:1.6; margin:0;">Both parties subscribe to events (status changes, new Tasks). Notifications arrive instantly at configured endpoints — no polling required.</p>
  </div>
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:18px;">
    <div style="font-weight:700; color:#003087; margin-bottom:6px; font-size:.9em;">🔗 groupIdentifier = Procedure Thread</div>
    <p style="font-size:.85em; color:#4b5563; line-height:1.6; margin:0;">All Tasks within a single regulatory procedure share the same <code>groupIdentifier</code>, enabling portfolio-wide search and reporting.</p>
  </div>
</div>

#### Conventions used in the examples {#conventions}

The worked scenarios on the [Use Cases](usecases.html) page all follow these conventions. Only the Task type and its documents change.

| Convention | How it works |
|---|---|
| **Binary → DocumentReference → Task** | Each file is uploaded as a `Binary` and attached to a `Task` through `Task.input` or `Task.output`. Best practice is to describe each Binary with a `DocumentReference` and attach that instead, so recipients see its type, author and security labels before downloading it. All examples follow this best practice. |
| **Inputs from the requester, outputs from the owner** | The party that creates the Task supplies `Task.input`. The party that does the work returns `Task.output`. |
| **One procedure, one `groupIdentifier`** | Every Task in a procedure (submission, invoice, questions, decision) carries the same `groupIdentifier`. |
| **Child Tasks point to the parent** | Questions, payments and follow-ups use `Task.basedOn` to reference the parent submission Task. |
| **Progress is a new Task version** | Status changes update the same Task, creating a new `meta.versionId`. In the IG the versions are shown as separate example instances (e.g. `-01` and `-02`), but in production they are versions of one Task. |
| **Terminal Tasks are never reopened** | A rejected or closed Task stays closed. A resubmission or a new review cycle is a new Task instance with the same `groupIdentifier`. |
| **Two status layers** | `Task.status` is the FHIR workflow state (`requested`, `accepted`, `completed`…). `Task.businessStatus` is the regulatory milestone (`submitted`, `clock-stop`, `approved`…). |
| **Parties** | All scenarios use the fictional applicant **SynthPharma AG** (`org-synthpharma-ag`) and the fictional regulator **Health Authority – Regulatory Review Division** (`org-ema-srm-hmed`). |
{:.grid}

<hr style="border:none; border-top:1px solid #e5e7eb; margin:0 0 32px;"/>

<!-- STEP-BY-STEP WALKTHROUGH -->
#### Step-by-Step Walkthrough: Shelf-Life Update {#walkthrough}

<p style="font-size:.88em; color:#6b7280; line-height:1.6; margin-bottom:16px;">The detailed exchange for a shelf-life update, with links to the example Task resources at each step. Jump straight to a key example:</p>

<div style="display:grid; grid-template-columns:repeat(4,1fr); gap:10px; margin-bottom:16px;">
  <a href="Task-scenario1-01-initial-submission.html" style="text-decoration:none; background:#eff6ff; border:1px solid #bfdbfe; border-radius:6px; padding:10px 12px; text-align:center; font-size:.82em; font-weight:600; color:#1d4ed8;">📤 Initial Submission</a>
  <a href="Task-scenario1-02-validation.html" style="text-decoration:none; background:#ecfdf5; border:1px solid #a7f3d0; border-radius:6px; padding:10px 12px; text-align:center; font-size:.82em; font-weight:600; color:#047857;">✅ Validation</a>
  <a href="Task-scenario1-05-technical-question.html" style="text-decoration:none; background:#fff7ed; border:1px solid #fed7aa; border-radius:6px; padding:10px 12px; text-align:center; font-size:.82em; font-weight:600; color:#c2410c;">❓ Question</a>
  <a href="Task-scenario1-07-final-decision.html" style="text-decoration:none; background:#faf5ff; border:1px solid #e9d5ff; border-radius:6px; padding:10px 12px; text-align:center; font-size:.82em; font-weight:600; color:#7e22ce;">📩 Decision</a>
</div>

<!-- PHASE 0 -->
<div style="background:linear-gradient(135deg,#f0f9ff,#eff6ff); border:1px solid #bfdbfe; border-radius:12px; padding:24px 28px; margin-bottom:32px;">
  <div style="display:flex; align-items:center; gap:10px; margin-bottom:16px;">
    <span style="display:inline-flex; align-items:center; justify-content:center; width:36px; height:36px; border-radius:50%; background:#003087; color:#fff; font-weight:800; font-size:.85em;">0</span>
    <span style="font-size:1.15em; font-weight:700; color:#003087;">Registration &amp; Connection</span>
  </div>
  <div style="background:#fff; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px; margin-bottom:12px;">
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Step 0.1 — Company Registers with Regulator</div>
    <p style="font-size:.85em; color:#4b5563; line-height:1.65; margin:0;">One-time registration with the Regulator's API portal. The Regulator registers the Company as an <code>Organization</code> and provides API credentials. The Company also registers an <code>Endpoint</code> for subscription notifications.</p>
  </div>
  <div style="background:#fff; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px;">
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Step 0.2 — Company Connects to API</div>
    <p style="font-size:.85em; color:#4b5563; line-height:1.65; margin:0;">The Company authenticates via OAuth2, confirming authorization to post resources for their medicinal products.</p>
  </div>
</div>

<!-- PHASE 1 -->
<div style="background:linear-gradient(135deg,#ecfdf5,#f0fdf4); border:1px solid #a7f3d0; border-radius:12px; padding:24px 28px; margin-bottom:32px;">
  <div style="display:flex; align-items:center; gap:10px; margin-bottom:16px;">
    <span style="display:inline-flex; align-items:center; justify-content:center; width:36px; height:36px; border-radius:50%; background:#047857; color:#fff; font-weight:800; font-size:.85em;">1</span>
    <span style="font-size:1.15em; font-weight:700; color:#047857;">Submission &amp; Validation</span>
  </div>

  <div style="background:#fff; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px; margin-bottom:12px;">
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Step 1.0 — Company Prepares Submission</div>
    <p style="font-size:.85em; color:#4b5563; line-height:1.65; margin:0;">Granular <strong>"Index Pattern"</strong> instead of monolithic ZIP — high performance and scalability even for massive datasets.</p>
  </div>

  <div style="background:#fff; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px; margin-bottom:12px;">
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Step 1.1 — Upload Binaries &amp; Bundles</div>
    <table style="width:100%; font-size:.83em; border-collapse:collapse; margin-top:8px;">
      <thead><tr style="background:#f9fafb; text-align:left;">
        <th style="padding:8px 10px; border-bottom:1px solid #e5e7eb;">Content Type</th>
        <th style="padding:8px 10px; border-bottom:1px solid #e5e7eb;">FHIR Resource</th>
      </tr></thead>
      <tbody>
        <tr><td style="padding:8px 10px; border-bottom:1px solid #f3f4f6; color:#4b5563;">PDF Documents</td><td style="padding:8px 10px; border-bottom:1px solid #f3f4f6;"><code>Binary</code></td></tr>
        <tr><td style="padding:8px 10px; border-bottom:1px solid #f3f4f6; color:#4b5563;">Structured Labeling (JSON)</td><td style="padding:8px 10px; border-bottom:1px solid #f3f4f6;">Document <code>Bundle</code></td></tr>
        <tr><td style="padding:8px 10px; color:#4b5563;">CMC Data</td><td style="padding:8px 10px;">Transaction <code>Bundle</code></td></tr>
      </tbody>
    </table>
  </div>

  <div style="background:#fff; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px; margin-bottom:12px;">
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Step 1.2 — Create DocumentReferences</div>
    <p style="font-size:.85em; color:#4b5563; line-height:1.65; margin:0;">Each upload gets a <code>DocumentReference</code> — a "Library Card" with metadata and a pointer to the uploaded resource.</p>
  </div>

  <div style="background:#fff; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px; margin-bottom:12px;">
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Step 1.3 — Create &amp; Post the Task</div>
    <p style="font-size:.85em; color:#4b5563; line-height:1.65; margin-bottom:8px;">The <code>Task</code> is the "Orchestrator" — it holds procedure metadata and references every <code>DocumentReference</code> in <code>Task.input</code>.</p>
    <div style="font-size:.82em; color:#6b7280;">📎 <a href="Task-scenario1-01-initial-submission.json" target="_blank" style="color:#1d4ed8;">JSON</a> · <a href="Task-scenario1-01-initial-submission.html" target="_blank" style="color:#1d4ed8;">HTML View</a></div>
  </div>

  <div style="background:#fff; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px;">
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Step 2.0 — Regulator Validates</div>
    <div style="display:grid; grid-template-columns:1fr 1fr; gap:10px; margin-top:10px;">
      <div style="background:#ecfdf5; border:1px solid #a7f3d0; border-radius:6px; padding:12px 16px;">
        <div style="font-weight:700; color:#065f46; font-size:.85em;">✅ Passes</div>
        <p style="font-size:.82em; color:#064e3b; margin:4px 0 6px;">Status → <strong>Accepted</strong>. Receipt &amp; results attached.</p>
        <div style="font-size:.78em;">📎 <a href="Task-scenario1-02-validation.json" target="_blank" style="color:#1d4ed8;">JSON</a> · <a href="Task-scenario1-02-validation.html" target="_blank" style="color:#1d4ed8;">HTML</a></div>
      </div>
      <div style="background:#fef2f2; border:1px solid #fecaca; border-radius:6px; padding:12px 16px;">
        <div style="font-weight:700; color:#991b1b; font-size:.85em;">❌ Fails</div>
        <p style="font-size:.82em; color:#7f1d1d; margin:4px 0 0;">Missing docs requested → Company re-submits → Re-validation.</p>
      </div>
    </div>
  </div>
</div>

<!-- PHASE 2 -->
<div style="background:linear-gradient(135deg,#faf5ff,#fdf4ff); border:1px solid #e9d5ff; border-radius:12px; padding:24px 28px; margin-bottom:32px;">
  <div style="display:flex; align-items:center; gap:10px; margin-bottom:6px;">
    <span style="display:inline-flex; align-items:center; justify-content:center; width:36px; height:36px; border-radius:50%; background:#7e22ce; color:#fff; font-weight:800; font-size:.85em;">2</span>
    <span style="font-size:1.15em; font-weight:700; color:#7e22ce;">Review Cycles</span>
  </div>
  <p style="font-size:.85em; color:#6b7280; margin:0 0 20px;">Multiple reviews happen <strong>in parallel</strong>.</p>

  <div style="background:#fff; border-left:4px solid #3b82f6; border-radius:0 8px 8px 0; padding:14px 20px; margin-bottom:12px;">
    <div style="font-weight:700; color:#1d4ed8; font-size:.88em;">Track A — Compliance Check</div>
    <p style="font-size:.83em; color:#4b5563; margin:4px 0 0;">Regulator checks compliance of the scientific data.</p>
  </div>

  <div style="background:#fff; border-left:4px solid #f59e0b; border-radius:0 8px 8px 0; padding:14px 20px; margin-bottom:12px;">
    <div style="font-weight:700; color:#b45309; font-size:.88em; margin-bottom:8px;">Track B — Financial Review</div>
    <ol style="font-size:.83em; color:#4b5563; line-height:1.75; padding-left:20px; margin:0 0 8px;">
      <li><strong>5.B.1</strong> — Regulator determines fee is due</li>
      <li><strong>5.B.3</strong> — Company posts proof of payment (<code>Binary</code> → <code>DocumentReference</code> → added as Task <strong>output</strong>)</li>
      <li><strong>5.B.4</strong> — Regulator verifies proof → Payment Task <strong>Completed</strong></li>
    </ol>
    <div style="font-size:.8em; color:#6b7280;">📎 <a href="Task-scenario1-04-finance-payment.json" target="_blank" style="color:#1d4ed8;">JSON</a> · <a href="Task-scenario1-04-finance-payment.html" target="_blank" style="color:#1d4ed8;">HTML View</a></div>
  </div>

  <div style="background:#fff; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px;">
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:10px;">Step 5.3 — Issue Resolution Loop</div>

    <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:6px; padding:12px 16px; margin-bottom:10px;">
      <div style="font-weight:700; color:#374151; font-size:.85em;">5.3.1 — Regulator Posts Questionnaire</div>
      <p style="font-size:.82em; color:#4b5563; margin:4px 0 6px;">POST <code>Questionnaire</code> → <code>DocumentReference</code> → <strong>Question Task</strong> (input: DocRef)</p>
      <div style="font-size:.78em;">📎 <a href="Task-scenario1-05-technical-question.json" target="_blank" style="color:#1d4ed8;">JSON</a> · <a href="Task-scenario1-05-technical-question.html" target="_blank" style="color:#1d4ed8;">HTML</a></div>
    </div>
    <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:6px; padding:12px 16px; margin-bottom:10px;">
      <div style="font-weight:700; color:#374151; font-size:.85em;">5.3.2 — Company Posts Response</div>
      <p style="font-size:.82em; color:#4b5563; margin:4px 0 6px;">POST <code>QuestionnaireResponse</code> → <code>DocumentReference</code> → added as Task <strong>output</strong></p>
      <div style="font-size:.78em;">📎 <a href="Task-scenario1-06-technical-response.json" target="_blank" style="color:#1d4ed8;">JSON</a> · <a href="Task-scenario1-06-technical-response.html" target="_blank" style="color:#1d4ed8;">HTML</a></div>
    </div>
    <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:6px; padding:12px 16px;">
      <div style="font-weight:700; color:#374151; font-size:.85em;">5.3.3 — Regulator Reviews Response</div>
      <p style="font-size:.82em; color:#4b5563; margin:4px 0 0;">If satisfactory → Question Task <strong>Completed</strong> → review continues.</p>
    </div>
  </div>
</div>

<!-- PHASE 3 -->
<div style="background:linear-gradient(135deg,#fff7ed,#fffbeb); border:1px solid #fed7aa; border-radius:12px; padding:24px 28px; margin-bottom:36px;">
  <div style="display:flex; align-items:center; gap:10px; margin-bottom:16px;">
    <span style="display:inline-flex; align-items:center; justify-content:center; width:36px; height:36px; border-radius:50%; background:#c2410c; color:#fff; font-weight:800; font-size:.85em;">3</span>
    <span style="font-size:1.15em; font-weight:700; color:#c2410c;">Final Decision</span>
  </div>
  <div style="background:#fff; border:1px solid #e5e7eb; border-radius:8px; padding:16px 20px;">
    <div style="font-weight:700; color:#111827; font-size:.92em; margin-bottom:6px;">Step 6.0 — Final Decision</div>
    <p style="font-size:.85em; color:#4b5563; line-height:1.65; margin-bottom:8px;">Regulator updates <code>Task.status</code> to <strong>completed</strong> and attaches decision documents to <code>Task.output</code>.</p>
    <div style="font-size:.82em; color:#6b7280;">📎 <a href="Task-scenario1-07-final-decision.json" target="_blank" style="color:#1d4ed8;">JSON</a> · <a href="Task-scenario1-07-final-decision.html" target="_blank" style="color:#1d4ed8;">HTML View</a></div>
  </div>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:0 0 32px;"/>

<!-- SEQUENCE DIAGRAM -->
#### Sequence Diagram

```mermaid
sequenceDiagram
    participant C as Company
    participant R as Regulator
    
    %% Phase 0: Registration
    Note over C,R: Phase 0: Registration & Connection
    C->>R: 0.1 Register with Regulator Portal
    R-->>C: Client Credentials & Org ID
    C->>R: 0.2 OAuth2 Authentication
    
    %% Phase 1: Submission
    Note over C,R: Phase 1: Submission & Validation
    par Upload Binaries/Bundles
        C->>R: 1.1 POST PDFs (Binary)
        C->>R: 1.1 POST Labels (Document Bundles)
        C->>R: 1.1 POST CMC (Transaction Bundles)
    end
    C->>R: 1.2 POST DocumentReferences (IDs/Links)
    C->>R: 1.3 POST Task (Orchestrator Index)
    
    activate R
    R->>R: 2.0 Validate Application
    
    alt Validation Passes
        R-->>C: 3.1 Ack Receipt & Validation Results
    else Validation Fails
        R->>C: 4.1 Request Missing Documents
        C->>R: 4.2.1 Submit Missing Documents
        R->>R: 4.2.2 Re-validate
    end
    
    %% Phase 2: Review
    Note over C,R: Phase 2: Review Cycles
    
    par Parallel Checks
        rect rgb(240, 248, 255)
            Note right of R: Technical Review
            R->>R: 5.2.1 Check Compliance
        end
        
        rect rgb(255, 250, 240)
            Note right of R: Financial Review
            R->>R: Review Financials
            Note over R: 5.B.2 Invoice Sequence
            R->>R: POST Invoice (Binary/Resource)
            R->>R: POST DocumentReference
            R->>C: POST Payment Task (Input: DocRef)
            activate C
            Note over C: 5.B.3 Payment Sequence
            C->>C: POST Proof of Payment (Binary)
            C->>C: POST DocumentReference
            C-->>R: Update Task (Add Output DocRef)
            deactivate C
            R->>R: 5.B.4 Verify Proof & Set Task: completed
        end
    end
    
    loop Issue Resolution
        alt Issue Found
            Note over R: 5.3.1 Question Sequence
            R->>R: POST Questionnaire
            R->>R: POST DocumentReference
            R->>C: POST Question Task (Input: DocRef)
            activate C
            Note over C: 5.3.2 Response Sequence
            C->>C: POST QuestionnaireResponse
            C->>C: POST DocumentReference
            C-->>R: Update Task (Add Output DocRef)
            deactivate C
            R->>R: 5.3.3 Review & Set Task: completed
        else No Issues
            R->>R: Proceed to Decision
        end
    end
    
    %% Phase 3: Decision
    Note over C,R: Phase 3: Final Decision
    
    alt Approved
        R-->>C: 6.1 Notify Approval (Decision Letter)
    else Rejected
        R-->>C: 7.1 Notify Rejection
    end
    deactivate R
```

<hr style="border:none; border-top:1px solid #e5e7eb; margin:0 0 32px;"/>

<!-- PRE-REQUISITES -->
### Prerequisites

<div style="display:grid; grid-template-columns:1fr 1fr 1fr; gap:14px; margin-bottom:36px;">
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:18px;">
    <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#6b7280; margin-bottom:6px;">Required</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">FHIR R5 Server</div>
    <p style="font-size:.82em; color:#6b7280; line-height:1.5; margin:0;">An R5-compliant FHIR server with support for Subscriptions, conditional create/update, and SMART Backend Services (e.g., HAPI FHIR, Smile CDR, Azure, AWS HealthLake, GCP Healthcare API).</p>
  </div>
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:18px;">
    <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#6b7280; margin-bottom:6px;">Required</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">OAuth2 / SMART</div>
    <p style="font-size:.82em; color:#6b7280; line-height:1.5; margin:0;">SMART Backend Services for system-level authentication using JWT bearer tokens. Mandatory for production use to ensure secure, audited access.</p>
  </div>
  <div style="background:#f9fafb; border:1px solid #e5e7eb; border-radius:8px; padding:18px;">
    <div style="font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; color:#6b7280; margin-bottom:6px;">Recommended</div>
    <div style="font-weight:700; color:#111827; margin-bottom:6px;">REST API Client</div>
    <p style="font-size:.82em; color:#6b7280; line-height:1.5; margin:0;">A REST client (e.g., Postman, cURL, or your RIM system) capable of sending FHIR JSON payloads over HTTPS. Essential for prototyping and testing.</p>
  </div>
</div>

<hr style="border:none; border-top:1px solid #e5e7eb; margin:0 0 32px;"/>

<!-- VALIDATE & BUILD -->
### Validate & Build

<p style="font-size:.88em; color:#374151; line-height:1.6; margin-bottom:10px;">Once you have reviewed the architecture and workflow:</p>
<ol style="font-size:.88em; color:#374151; padding-left:20px; line-height:1.9; margin-bottom:32px;">
  <li><strong>Validate your FHIR resources</strong> — Use the <a href="https://validator.fhir.org" target="_blank" style="color:#2563eb; font-weight:600;">Official FHIR Validator</a> with the RWI-pharma IG package to check compliance with the profiles defined in this guide.</li>
  <li><strong>Test end-to-end</strong> — Post a Task to a test FHIR server, subscribe to status changes, and verify that notifications arrive at your webhook endpoint.</li>
  <li><strong>Connect your RIM</strong> — Use the provided examples as templates. Start with a simple shelf-life variation submission to establish connectivity.</li>
</ol>
