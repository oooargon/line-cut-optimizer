<h1 align="center">Linear Cutting Stock Optimizer</h1>

<p align="center">
  <a href="https://github.com/oooargon/line-cut-optimizer/releases/tag/v1.0.8b" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/Release-v1.0.8b-0A7EA4?style=for-the-badge&logo=github&logoColor=white" alt="Release v1.0.8a" /></a>
  <a href="https://www.typescriptlang.org/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white" alt="TypeScript" /></a>
  <a href="https://react.dev/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB" alt="React" /></a>
  <a href="https://nextjs.org/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/Next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white" alt="Next.js" /></a>
  <a href="https://tailwindcss.com/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/Tailwind_CSS-0EA5E9?style=for-the-badge&logo=tailwindcss&logoColor=white" alt="Tailwind CSS" /></a>
  <a href="https://github.com/parallax/jsPDF" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/jsPDF-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" alt="jsPDF" /></a>
  <a href="https://github.com/exceljs/exceljs" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/ExcelJS-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white" alt="ExcelJS" /></a>
</p>

<p align="center">
  <a href="https://www.electronjs.org/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/Electron-2B2E3A?style=for-the-badge&logo=electron&logoColor=47848F" alt="Electron" /></a>
  <a href="https://capacitorjs.com/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/Capacitor-119EFF?style=for-the-badge&logo=capacitor&logoColor=white" alt="Capacitor" /></a>
  <a href="https://developer.android.com/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android" /></a>
  <a href="https://developer.apple.com/ios/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white" alt="iOS" /></a>
  <a href="https://deploy.workers.cloudflare.com/?url=https://github.com/whonion/ts-linecut-opt-nesting" style="display:inline-block;margin:0 6px;"><img src="https://deploy.workers.cloudflare.com/button" height="28" alt="Deploy to Cloudflare" /></a>
  <a href="./README_RU.md" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/Русский-0052CC?style=for-the-badge&logo=github&logoColor=white" alt="Русский" /></a>
</p>

## 📋 Abstract

**LineCut Optimizer** is an application for generating cutting maps and production reports (MES) for steel profiles (beams, pipes, channels, angles, and more), as well as exporting FabTrol (XML) lists for automated nesting in ProNest (version 2021 and above).

The application solves the **Cutting Stock Problem** (also known as the bin packing problem) - a classic optimization problem in operations research. The problem involves cutting standard-sized stock materials (such as pipes, profiles, rebar, or sheet metal) into pieces of specified sizes while minimizing material waste.

It implements a greedy algorithm with pattern generation to find near-optimal cutting solutions and supports:
- Multiple stock lengths with quantity constraints
- Multiple part sizes with required quantities
- End cut and blade thickness parameters
- Mark and position tracking for parts
- Excel file import/export
- Visual cutting pattern representation

This tool is designed for industrial applications where material waste reduction directly impacts production costs and efficiency.

---

## 🔍 Overview

A web-based calculator for optimal linear material cutting (pipes, profiles, rebar, etc.) that solves the cutting stock problem using pattern generation and greedy optimization algorithms.

### ✨ Features

- ✅ **Multiple Stock Management**: Define multiple stock lengths with quantity constraints (including unlimited)
- ✅ **Part Management**: Add parts manually or import from Excel files
- ✅ **Mark & Position Tracking**: Track part marks and positions for production planning
- ✅ **Excel Import/Export**: Import cutting lists from Excel and export cutting patterns
- ✅ **Visual Cutting Patterns**: Interactive visualization of cutting patterns with waste indicators
- ✅ **Optimization Parameters**: Configure end cuts and blade thickness for accurate calculations
- ✅ **Real-time Statistics**: View total waste, efficiency, and stock usage

### 🛠️ Technology Stack

- **Next.js 16** - React framework with App Router
- **TypeScript** - Type-safe development
- **Tailwind CSS 4** - Modern styling
- **ExcelJS** - Excel file parsing and generation
- **jsPDF** - PDF document generation
- **Electron** - Desktop application platform
- **Capacitor** - Android and iOS (WebView wrapper over static Next.js export)
- **Cloudflare Workers** - Trial API / license counter backend

### 📦 Installation

```bash
npm install
```

### 🚀 Development

```bash
npm run dev
```

The application will be available at [http://localhost:3000](http://localhost:3000)

### 🏗️ Build for Production

```bash
npm run build
npm start
```

### 📱 Mobile build (Android)

```bash
npm run mobile:apk:debug    # debug APK (after next build + cap sync)
npm run mobile:apk:release  # release APK
npm run mobile:android      # open Android Studio
```

Output: `android/app/build/outputs/apk/debug/app-debug.apk`

Multi-platform release artifacts (`.exe`, `.deb`, `.dmg`, `.apk`, `.aab`, iOS simulator zip) are published to [GitHub Releases](https://github.com/oooargon/line-cut-optimizer/releases) on `v*` tag push. Latest: [v1.0.8a](https://github.com/oooargon/line-cut-optimizer/releases/tag/v1.0.8a).

### 🖥️ Desktop (Electron)

```bash
make                  # Windows portable
npm run electron:linux
npm run electron:mac
```

### 📊 File Import / Export Formats

<div align="center">

<table>
  <tr>
    <td>
      <img src="./public/icons/xl.svg" alt="Excel / Blank‑RZ" width="48" /><br />
      <strong>Standard Excel / Blank‑RZ</strong><br />
      <sub>Import / export of simple cutting lists and Blank‑RZ templates.</sub>
    </td>
    <td>
      <img src="./public/icons/tekla.svg" alt="Tekla Structures" width="48" /><br />
      <strong>Tekla Structures</strong><br />
      <sub>Import of Tech Cards with automatic profile / fitting parsing.</sub>
    </td>
  </tr>
  <tr>
    <td>
      <img src="./public/icons/ads.svg" alt="Advance Steel" width="48" /><br />
      <strong>Advance Steel</strong><br />
      <sub>Import of BOM extracts (`.xml`, `.xlsx`) with assemblies and fittings.</sub>
    </td>
    <td>
      <img src="./public/icons/fabtrol.svg" alt="PowerFab / FabTrol / ProNest" width="48" /><br />
      <strong>PowerFab / FabTrol / ProNest</strong><br />
      <sub>Import of PowerFab/FabTrol orders and export of plate fittings to FabTrol XML for ProNest.</sub>
    </td>
  </tr>
  <tr>
    <td>
      <img src="./public/icons/ifc.svg" alt="IFC" width="48" /><br />
      <strong>IFC (Tekla / Advance Steel)</strong><br />
      <sub>Import of IFC models (`.ifc`) with profile, length, mark and weight extraction.</sub>
    </td>
    <td>
      <img src="./public/icons/dwf.svg" alt="DWF" width="48" /><br />
      <strong>DWF (Navisworks / Advance Steel)</strong><br />
      <sub>Import of Navisworks lightweight models (`.dwf`) with BOM from content.xml.</sub>
    </td>
  </tr>
</table>

</div>

The application supports several import modes and integrations:

1. **Standard Excel**:
   - Expects columns:
     - **LENGTH** - Part length in millimeters
     - **QUANTITY** - Number of parts required
     - **MARK** - Optional part mark/identifier
     - **POSITION** - Optional part position
   - Extensions: `.xlsx`, `.xlsm`

2. **Blank‑RZ (Excel template)**:
   - Imports specifications in the Blank‑RZ format (plates and profiles).
   - Extensions: `.xlsx`, `.xlsm`

3. **Tekla Structures**:
   - Imports "Technological Map" (Технологическая карта) exports.
   - Extensions: `.xlsx`

4. **Advance Steel**:
   - Imports BOM extracts (XML) or Excel lists.
   - Extensions: `.xml`, `.xlsx`
   - Supports hierarchical assemblies (beams/pipes + attached plates) and automatically separates fittings vs mounting elements.

5. **IFC (Tekla / Advance Steel)**:
   - Imports STEP IFC models (`.ifc`) via `web-ifc`.
   - Extracts profiles (`ObjectType` / `Pset_ProfileProperties`), lengths, marks (`Tag`), weights and assembly plates.
   - No 3D viewer — property extraction only.

6. **DWF (Navisworks / Advance Steel)**:
   - Imports Navisworks lightweight models (`.dwf`, ZIP + `content.xml`).
   - Reads Advance Steel properties: profile, length, mass, shipping mark, position.
   - Assembly and plate grouping matches IFC / Advance Steel extract logic.

7. **PowerFab / FabTrol / ProNest**:
   - Exports plate fittings grouped by steel grade to FabTrol XML `pronest-cutting-list.xml` for ProNest / PowerFab.

### ⚙️ Algorithm

The application uses a greedy algorithm with pattern generation:

1. Generates all possible cutting patterns for each stock length
2. Selects patterns with minimum waste
3. Optimizes material usage by iteratively applying best patterns
4. Tracks individual parts with marks and positions

### 📖 Usage

1. **Configure Parameters**: Set end cut and blade thickness
2. **Add Stock**: Define stock lengths and quantities
3. **Add Parts**: Manually enter parts or import from Excel
4. **Calculate**: Run the optimization algorithm
5. **View Results**: Review cutting patterns and statistics
6. **Visualize**: Click "Показать раскрой" to see visual cutting patterns
7. **Export**: Save results to Excel file or PDF

### 📁 Project Structure

```
line-cut-optimizer/
├── app/                              # Next.js App Router entry
│   ├── layout.tsx                    # Root layout
│   ├── page.tsx                      # Main page (mounts CuttingCalculator)
│   └── globals.css                   # Global styles
├── components/                       # React components / UI
│   ├── mes/                          # MES panel, orders, daily marks, PTO upload
│   ├── CuttingCalculator.tsx         # Main calculator + UI logic
│   ├── CuttingVisualization.tsx      # Cutting patterns visualization
│   ├── AutomaticCuttingButton.tsx    # One-click automatic cutting flow
│   ├── AboutModal.tsx                # In‑app README / license viewer
│   ├── TechCardComparison.tsx        # Tekla tech card comparison UI
│   ├── AppBootLoader.tsx             # App bootstrap / loading screen
│   ├── AppFooter.tsx                 # Footer with version and links
│   ├── ThemeToggle.tsx               # Light / dark theme toggle
│   ├── TrialNoticeModal.tsx          # Trial notice / limits UI
│   ├── TrialApiStatusIndicator.tsx   # Trial API connectivity status
│   ├── IconLoader.tsx                # Lazy icon loading
│   ├── MobilePlatformInit.tsx        # Capacitor mobile init
│   ├── PrintConfirmDialog.tsx        # Print / PDF confirmation dialog
│   └── VisualExportHint.tsx          # Visual export hints
├── lib/                              # Core domain logic
│   ├── mes/                          # MES readiness, BOM ingest, Drive sync
│   ├── trial/                        # Trial license / fingerprint / API client
│   ├── cutting-stock.ts              # Cutting stock algorithm
│   ├── long-part-splitter.ts         # Long parts A/B splitter
│   ├── excel-parser.ts               # Standard Excel / Blank‑RZ parser
│   ├── tekla_tech_card.ts            # Tekla tech card parser
│   ├── tekla_1c_xml_generator.ts     # Tekla → 1C XML export
│   ├── tekla_plate_dims.ts           # Tekla plate dimension helpers
│   ├── advance_steel_parser.ts       # Advance Steel XML / Excel parser
│   ├── blank_rz.ts                   # Blank‑RZ helpers and weight calc
│   ├── tech_card_comparator.ts       # Tekla tech card comparison logic
│   ├── tech_card_comparison_pdf.ts   # Comparison PDF export
│   ├── fabtrol_generator.ts          # FabTrol XML export for ProNest/PowerFab
│   ├── fabtrol_parser.ts             # FabTrol order / plate import
│   ├── fabtrol_plates.ts             # FabTrol plate helpers
│   ├── fabtrol_inquiry_parser.ts     # FabTrol inquiry (MRP) import
│   ├── fabtrol_inquiry_generator.ts  # FabTrol inquiry (MRP) export
│   ├── fabtrol_nc_paths.ts           # FabTrol NC path helpers
│   ├── powerfab_parser.ts            # PowerFab work order parser
│   ├── pronest_cutting_list_parser.ts   # ProNest cutting list import
│   ├── pronest_cutting_list_generator.ts# ProNest cutting list export
│   ├── pronest_pnl_generator.ts      # ProNest PNL file generator
│   ├── snl_generator.ts              # SNL / metal demand export
│   ├── pdf-font-loader.ts            # PDF font preloading for jsPDF
│   ├── pdf-layout.ts                 # PDF layout helpers
│   ├── pdf-print.ts                  # PDF generation and print
│   ├── capacitor-linecut-app.ts      # Capacitor app bridge helpers
│   ├── boot-loader.ts                # Boot / splash loader helpers
│   ├── asset-path.ts                 # Asset path helper (web/Electron)
│   ├── format-utils.ts               # Mark/label formatting helpers
│   ├── app-links.ts                  # External links and store URLs
│   ├── app-version.ts                # App version metadata
│   ├── platform-api.ts               # Platform detection (web/Electron/mobile)
│   ├── processing-tags.ts            # Processing tag helpers
│   └── xml_escape.ts                 # XML escaping utilities
├── types/                            # Shared TypeScript types
│   └── gost_profiles.ts              # GOST profile definitions
├── electron/                         # Electron desktop shell
│   ├── main.ts                       # Main process
│   ├── preload.ts                    # Preload bridge
│   ├── fingerprint.ts                # Desktop device fingerprint
│   └── print-pdf.ts                  # Native PDF print helper
├── android/                          # Capacitor Android project
├── ios/                              # Capacitor iOS project
├── cloudflare/                       # Cloudflare Workers (trial API)
├── integrations/                     # 1C / ERP processing integrations
├── scripts/                          # Build and verification scripts
│   ├── build-android-apk.ts          # Android APK build helper
│   ├── copy-electron-assets.ts       # Electron asset staging
│   ├── generate-brand-icons.ts       # App icon generation
│   ├── stage-release-downloads.ts    # Stage release assets for public/downloads
│   └── verify-*.ts                   # FabTrol / SNL / 1C format verification
├── public/                           # Static assets
│   ├── icons/                        # UI icons (Excel, Tekla, ADS, FabTrol, etc.)
│   ├── assets/                       # Images, fonts, and other assets
│   └── downloads/                    # Release download links
├── examples/                         # Sample input files
│   ├── advance/                      # Advance Steel extracts (XML)
│   ├── blank_rz/                     # Blank‑RZ Excel samples
│   ├── FabTrol/                      # FabTrol order / DLL samples
│   ├── PowerFab/                     # PowerFab work order examples
│   ├── pronest/                      # ProNest cutting list samples
│   ├── tekla/                        # Tekla tech card samples
│   └── mes/                          # MES sample payloads
├── docs/                             # Additional documentation
├── out/                              # Static export / build artifacts
├── capacitor.config.ts               # Capacitor mobile config
├── next.config.js                    # Next.js config (static export)
└── package.json                      # Dependencies and scripts
```

### 📜 License

MIT
