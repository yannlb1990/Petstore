# PawTrail • Australian Pet Essentials

PawTrail is a pre-launch ecommerce storefront. The approved visual design uses an ivory and soft blue-grey hero, olive calls to action, premium typography, and a focused catalogue of four products and two bundles.

**Status: GitHub repository initialised. The complete application files are not yet uploaded. Do not deploy this README-only repository.**

## Source package
The complete PawTrail source was prepared in ChatGPT as **PawTrail_GitHub_Railway_Ready.zip**. Extract that archive and upload its contents to this repository, retaining the `public/assets/` and `tests/` directories. Do not commit the ZIP as a replacement for source files.

## Running after source upload
Requires Node.js 22.13+.

```bash
node tests/integration.mjs
node server.mjs
```

The app is intended to run as a single Node service with persistent SQLite storage on Railway (mount `/app/data`). Vercel deployment requires a backend/database refactor.

## Launch safety
- Do not commit `.env`, Stripe keys, passwords, customer information or database files.
- Real payments must remain **disabled** until business identity, supplier specifications, shipping policies, Stripe merchant credentials and end-to-end webhook testing are complete.
- Generated product photography remains a visual concept until approved supplier product images replace it.
- Avoid accepting newsletter/order data on non-persistent or unsecured storage.

The rest of this README should be replaced or supplemented with the full deployment guide after source upload.