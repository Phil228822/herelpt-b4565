# Herel PT – Project Rules

## Hosting
- **ALWAYS use Cloudflare Pages. NEVER Netlify.**
- Netlify's free tier has a 300 build minute/month cap. We burned through it. Never again.
- Deploy command: `./deploy.sh` (wrangler direct upload, unlimited and free)

## Stack
- Static HTML/CSS/JS — no build step, no framework
- Hosted: Cloudflare Pages (project: `herelpt`)
- Domain: herelpt.com → Cloudflare DNS → herelpt.pages.dev
- Contact form: Formspree (endpoint: xbdppana) → HerelTherapy@gmail.com
- Images: /images/ directory (committed to repo)
- NO video files in the repo (*.mp4 is gitignored)

## Deploy
```bash
./deploy.sh
```
That's it. No git push needed. Direct upload to Cloudflare Pages.
