# 자비스 칸반 (Jarvis Kanban)

**회사 · 집 · 취미** 컨텍스트별 D&D 칸반 보드.

## 🚀 사용

브라우저에서 https://jw0119.github.io/jarvis-kanban/ 접속.

## 🛠️ 기능

- 📥 미분류 / 🏢 회사 / 🏠 집 / 🎨 취미 4 컬럼
- SortableJS 기반 드래그&드롭
- 카드별 시간 지평(단기/중기/장기) + 프로젝트 배지
- 자동 저장: `localStorage` (브라우저별)
- JSON 내보내기/불러오기 (백업 & 동기화)
- 새 할 일 인라인 추가
- 다크 테마

## 🏗️ 구조

```
index.html  — 단일 파일 (HTML + CSS + JS + SortableJS CDN)
```

의존성: SortableJS (CDN), 그 외 없음.

## 🔄 동기화 전략

브라우저 localStorage라 기기/브라우저별로 분리됨. 동기화 패턴:
1. 한 곳에서 수정 후 📦 내보내기
2. 다른 기기에서 📥 불러오기
3. 또는 [Jarvis-llm-wiki](https://github.com/JW0119/Jarvis-llm-wiki) 연동 스크립트로 자동 sync (계획 중)

## 라이선스

Personal use. By 자비스 (Claude) for @JW0119.
