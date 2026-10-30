# Muhammad Naveed Ishaque — Employer portfolio

Public address: https://portfolio.detleng.com/
Target roles: **AI Support, AI Associate and User Enablement**.

## What changed
- Preserved the supplied V8A quote, made the name prominent below it, removed the dated October 2026 label and brought the job focus forward.
- Six featured tools/learning examples followed by all 24 supplied projects in a searchable, filterable library. Status and personal contribution remain distinct from tool features. The repeated incorrect “personal online presence” descriptions on practical tools were corrected.
- The wider website directory is an optional expandable reference, not an employment achievement count.
- Added a Barcelona-centred Europe connection graphic and professional details. Countries represent potential collaboration/relocation destinations, not established offices or clients.
- Full-width M.Sc. partial-studies evidence panel with 35 recorded credit hours and transcript CGPA 3.19. The degree is explicitly not completed. Transcript popup supports zoom, full-image view, Close/Escape and focus restoration. Identifiers remain visible at the owner's explicit request.
- Improved body/card text sizes, responsive header/menu and modern four-column footer.
- Contact by email or Automation Desk. No contact backend, login, tracking or new services.
- Original V8A HTML and locked portfolio archives were not changed.

## Working model and evidence
The content presents AI-assisted development, requirements, user guidance, learning design and practical review. It does not claim independent full-stack engineering, awarded cloud certifications, enterprise deployment leadership or independently audited security. Project descriptions/status come from the supplied portfolio; live services and external repositories have not all been re-audited for this presentation update.

## Run locally
From this folder:

```powershell
python -m http.server 8100 --bind 127.0.0.1
```

Open http://127.0.0.1:8100/. No installation or build needed. Project search uses title, description, tools and status; category filters combine with search. A Details button opens each project's description and evidence links. Clear the search and select All work to restore the full library.

## Publish
The agent has not committed, pushed or deployed. Run the included `PUSH.ps1` yourself. It clones or reuses a separate `portfolio-detleng-publish` checkout, pulls the remote first and copies only the explicit public website files before commit/push. It stops on dirty checkout or Git failure and does not force-push. GitHub Pages must serve the main branch root with the existing custom domain and HTTPS enabled.

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "D:\DETLENG2\portfolio-detleng\PUSH.ps1"
```

Files: index.html, styles.css, app.js, academic-transcript.png, favicon.ico, CNAME, .nojekyll, README.md, TESTING.md and PUSH.ps1.

## Content maintenance
Project data is in the `PROJECTS` array in app.js. Six highlighted examples also have static cards in index.html; update both when changing a featured description. Keep learning outlines, prototypes and published tools labelled individually. Do not convert partial studies or conceptual exposure into qualification claims.
