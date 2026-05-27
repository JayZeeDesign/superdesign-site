# Superdesign — landing site

Minimal SEO-ready single-page landing site for Superdesign, an AI design agent for early-stage founders building AI products.

## Stack

- Plain static HTML + CSS (no JS framework, no build step)
- Hosted on GitHub Pages

## SEO posture

- Single H1, semantic landmarks (`header` / `nav` / `main` / `section` / `footer`)
- Meta description + canonical
- OpenGraph + Twitter card meta
- JSON-LD `SoftwareApplication` schema
- `robots.txt` + `sitemap.xml`
- Mobile-first responsive CSS
- No render-blocking JS

## Local preview

```sh
python3 -m http.server 8080
# open http://localhost:8080
```

## Deploy

Pushed to the `main` branch of the GitHub Pages repo; Pages publishes from the root.
