# Hosting and source upload

The code was prepared in ChatGPT as `PawTrail_GitHub_Railway_Ready.zip`. The repository is **not deployable until the archive's `server.mjs`, `catalog.mjs`, `public/assets/`, and `tests/` are uploaded.**

1. Download and extract the prepared ZIP.
2. Upload the extracted files while preserving their paths. Use GitHub Desktop to clone `yannlb1990/Petstore`, copy the extracted files into the clone, commit, and push. Never upload `.env` or customer records.
3. To run locally with Node.js 22.13+: `node tests/integration.mjs` then `node server.mjs`.
4. On Railway, deploy from the GitHub repository, attach a persistent volume at `/app/data`, keep one replica, and set `SESSION_SECRET`, `ADMIN_PASSWORD`, and `BASE_URL` in Railway variables.
5. Set `ENABLE_STRIPE_TEST_CHECKOUT=no` and `ALLOW_LIVE_CHECKOUT=no` initially. Verify supplier stock, shipping, policies, tax treatment, product imagery and Stripe test webhooks before ever enabling payments.

Note: GitHub currently reports this repository as **public**. Change it to private in Settings → General → Danger Zone if you prefer to keep proprietary website source private. Never store secrets in GitHub, even in a private repository.

Vercel is not a drop-in host for the app's local SQLite database. Railway is a simpler initial fit; use managed Postgres if migrating backend to Vercel.
