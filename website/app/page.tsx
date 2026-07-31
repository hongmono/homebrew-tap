"use client";

import { useState } from "react";

const basePath = process.env.NEXT_PUBLIC_BASE_PATH ?? "";

const apps = [
  {
    slug: "sill",
    name: "Sill",
    eyebrow: "Screenshot workflow",
    description: "스크린샷을 화면 가장자리에 쌓고 OCR·번역까지.",
    detail:
      "캡처한 이미지를 바로 버리거나, 저장하거나, 텍스트로 꺼낼 수 있습니다. 작업 흐름을 끊지 않는 작은 스크린샷 선반입니다.",
    command: "brew install hongmono/tap/sill",
    github: "https://github.com/hongmono/Sill",
    requirement: "macOS 13+",
    icon: `${basePath}/apps/sill.png`,
  },
  {
    slug: "lathe",
    name: "Lathe",
    eyebrow: "App switcher",
    description: "익숙한 ⌘+Tab을 부채꼴 앱 전환기로.",
    detail:
      "손의 리듬은 그대로 두고, 실행 중인 앱을 더 입체적으로 훑어봅니다. 현재 Space의 앱을 먼저 보여주는 독립 앱 스위처입니다.",
    command: "brew install hongmono/tap/lathe",
    github: "https://github.com/hongmono/Lathe",
    requirement: "macOS 14+",
    icon: `${basePath}/apps/lathe.png`,
  },
  {
    slug: "gitscope",
    name: "GitScope",
    eyebrow: "Git overview",
    description: "여러 저장소의 브랜치와 커밋을 하나의 그래프로.",
    detail:
      "브랜치, 작업 상태, 커밋 흐름을 한 화면에서 확인합니다. 여러 프로젝트를 오갈 때도 전체 맥락을 놓치지 않는 Git 뷰어입니다.",
    command: "brew install hongmono/tap/gitscope",
    github: "https://github.com/hongmono/GitScope",
    requirement: "Apple Silicon · macOS 14+",
    icon: `${basePath}/apps/gitscope.png`,
  },
] as const;

export default function Home() {
  const [copied, setCopied] = useState<string | null>(null);

  const copyCommand = async (slug: string, command: string) => {
    await navigator.clipboard.writeText(command);
    setCopied(slug);
    window.setTimeout(() => setCopied(null), 1800);
  };

  return (
    <main>
      <header className="site-header">
        <a className="wordmark" href="#top" aria-label="hongmono 홈">
          hongmono
        </a>
        <nav aria-label="주요 메뉴">
          <a href="#apps">앱</a>
          <a href="#install">설치</a>
          <a
            href="https://github.com/hongmono"
            target="_blank"
            rel="noreferrer"
          >
            GitHub <span aria-hidden="true">↗</span>
          </a>
        </nav>
      </header>

      <section className="hero" id="top">
        <div className="hero-heading">
          <p className="overline">Independent software for Mac</p>
          <h1>
            작지만, 매일 쓰게 되는
            <br />
            macOS 도구들
          </h1>
        </div>
        <div className="hero-intro">
          <p>
            macOS의 익숙한 흐름을 해치지 않으면서
            <br />
            한 가지 일을 더 잘하게 만드는 앱을 만듭니다.
          </p>
          <div className="hero-actions">
            <a className="button button-primary" href="#apps">
              앱 둘러보기 <span aria-hidden="true">↓</span>
            </a>
            <a
              className="button button-secondary"
              href="https://github.com/hongmono/homebrew-tap"
              target="_blank"
              rel="noreferrer"
            >
              Homebrew tap <span aria-hidden="true">↗</span>
            </a>
          </div>
        </div>
      </section>

      <section className="apps-section" id="apps" aria-labelledby="apps-title">
        <div className="section-heading">
          <div>
            <p className="section-index">01</p>
            <h2 id="apps-title">Apps for macOS</h2>
          </div>
          <p>세 개의 도구, 각자의 한 가지 일.</p>
        </div>

        <div className="app-grid">
          {apps.map((app) => (
            <article className={`app-card app-card-${app.slug}`} key={app.slug}>
              <div className="app-card-header">
                <img
                  className="app-icon"
                  src={app.icon}
                  alt={`${app.name} 앱 아이콘`}
                />
                <div>
                  <p className="app-eyebrow">{app.eyebrow}</p>
                  <h3>{app.name}</h3>
                </div>
                <span className="requirement">{app.requirement}</span>
              </div>

              <div className={`app-visual app-visual-${app.slug}`}>
                {app.slug === "sill" && (
                  <div className="sill-stack" aria-hidden="true">
                    <span className="stack-sheet stack-sheet-one" />
                    <span className="stack-sheet stack-sheet-two" />
                    <span className="stack-sheet stack-sheet-three" />
                    <img src={`${basePath}/apps/sill.png`} alt="" />
                  </div>
                )}
                {app.slug === "lathe" && (
                  <img
                    className="product-shot lathe-shot"
                    src={`${basePath}/apps/lathe-carousel.png`}
                    alt="Lathe의 부채꼴 앱 전환 화면"
                  />
                )}
                {app.slug === "gitscope" && (
                  <img
                    className="product-shot gitscope-shot"
                    src={`${basePath}/apps/gitscope-window.webp`}
                    alt="GitScope의 저장소 커밋 그래프 화면"
                  />
                )}
              </div>

              <div className="app-copy">
                <p className="app-description">{app.description}</p>
                <p className="app-detail">{app.detail}</p>
              </div>

              <div className="app-actions">
                <button
                  className="command"
                  type="button"
                  onClick={() => copyCommand(app.slug, app.command)}
                  aria-label={`${app.name} Homebrew 설치 명령 복사`}
                >
                  <span aria-hidden="true">$</span>
                  <code>{app.command}</code>
                  <span className="copy-label">
                    {copied === app.slug ? "복사됨" : "복사"}
                  </span>
                </button>
                <a href={app.github} target="_blank" rel="noreferrer">
                  GitHub에서 보기 <span aria-hidden="true">↗</span>
                </a>
              </div>
            </article>
          ))}
        </div>
      </section>

      <section className="install-section" id="install">
        <div className="install-copy">
          <p className="section-index">02</p>
          <h2>하나의 tap으로 시작하세요.</h2>
          <p>
            별도 설정 없이 원하는 앱의 명령을 복사해 터미널에 붙여넣으면
            됩니다. 이후 업데이트도 Homebrew가 함께 관리합니다.
          </p>
        </div>
        <div className="terminal" aria-label="Homebrew 설치 예시">
          <div className="terminal-top">
            <span />
            <span />
            <span />
            <p>Terminal</p>
          </div>
          <div className="terminal-body">
            <p>
              <span>$</span> brew tap hongmono/tap
            </p>
            <p>
              <span>$</span> brew install hongmono/tap/gitscope
            </p>
            <p className="terminal-result">
              <span>✓</span> GitScope.app installed
            </p>
          </div>
        </div>
      </section>

      <footer>
        <p>Designed and built for macOS by hongmono.</p>
        <div>
          <a
            href="https://github.com/hongmono"
            target="_blank"
            rel="noreferrer"
          >
            GitHub
          </a>
          <a
            href="https://github.com/hongmono/homebrew-tap"
            target="_blank"
            rel="noreferrer"
          >
            Homebrew tap
          </a>
        </div>
      </footer>

      <p className="sr-only" aria-live="polite">
        {copied ? "설치 명령을 복사했습니다." : ""}
      </p>
    </main>
  );
}
