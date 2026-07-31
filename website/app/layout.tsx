import type { Metadata } from "next";
import "./globals.css";

const siteUrl =
  process.env.NEXT_PUBLIC_SITE_URL ??
  "https://hongmono-mac-apps.hongmono.chatgpt.site";
const title = "hongmono — 매일 쓰게 되는 macOS 도구들";
const description =
  "Sill, Lathe, GitScope. macOS의 익숙한 흐름을 더 나아지게 만드는 독립 앱을 소개합니다.";

export const metadata: Metadata = {
  metadataBase: new URL(siteUrl),
  title,
  description,
  openGraph: {
    title,
    description,
    type: "website",
    locale: "ko_KR",
    siteName: "hongmono",
    images: [
      {
        url: `${siteUrl}/og.png`,
        width: 1731,
        height: 908,
        alt: "hongmono의 macOS 앱 Sill, Lathe, GitScope",
      },
    ],
  },
  twitter: {
    card: "summary_large_image",
    title,
    description,
    images: [`${siteUrl}/og.png`],
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="ko">
      <body>{children}</body>
    </html>
  );
}
