# Salesforce Enterprise Architecture – Vineet Yadav

## Overview
This project demonstrates an enterprise-level Salesforce architecture using
Apex Trigger Framework, Service Layer, Selector Pattern, UnitOfWork, and LWC UI.

---

## High Level Flow

User / UI (LWC)
│
▼
Apex Controller / Service
│
▼
Trigger Framework
│
▼
Handler Layer
│
▼
Service Layer
│
▼
Selector Layer (SOQL)
│
▼
Unit Of Work (DML)
│
▼
Database (Salesforce Objects


---

## Component Responsibilities

### LWC (Frontend)
- Datatable
- Form Validation
- Spinner / Toast
- Calls Apex Methods

### Trigger
- Entry point for DML events
- Bulk-safe execution

### Handler Layer
- Routes logic based on context
- Keeps trigger thin

### Service Layer
- Business logic
- Reusable functions

### Selector Layer
- All SOQL queries centralized
- Improves performance & maintainability

### Unit Of Work
- Centralized DML
- Reduces governor limit risk

---

## Async Layer (Optional)

Trigger → Queueable → Batch → Future

Used for:
- Heavy processing
- Integrations
- Email / Notifications

---

## Deployment Structure (SFDX)

force-app/
└─ main/
└─ default/
├─ classes
├─ triggers
├─ lwc
└─ objects


---

## Benefits

- Clean Architecture
- Reusable Code
- Governor Limit Safe
- Easy Testing
- Enterprise Scalable
