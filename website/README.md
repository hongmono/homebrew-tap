# hongmono macOS apps

Sill, Lathe, GitScope를 소개하는 정적 웹사이트입니다.

```bash
npm install
npm run dev
```

GitHub Pages용 정적 빌드는 다음 명령으로 확인할 수 있습니다.

```bash
GITHUB_PAGES=true \
NEXT_PUBLIC_BASE_PATH=/homebrew-tap \
NEXT_PUBLIC_SITE_URL=https://hongmono.github.io/homebrew-tap \
npm run build:pages
```
