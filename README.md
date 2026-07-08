<h1 align="center">Linear Cutting Stock Optimizer</h1>

<p align="center">
  <a href="https://www.typescriptlang.org/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white" alt="TypeScript" /></a>
  <a href="https://react.dev/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB" alt="React" /></a>
  <a href="https://nextjs.org/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/Next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white" alt="Next.js" /></a>
  <a href="https://tailwindcss.com/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/Tailwind_CSS-0EA5E9?style=for-the-badge&logo=tailwindcss&logoColor=white" alt="Tailwind CSS" /></a>
  <a href="https://www.electronjs.org/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/Electron-2B2E3A?style=for-the-badge&logo=electron&logoColor=47848F" alt="Electron" /></a>
  <a href="https://capacitorjs.com/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/Capacitor-119EFF?style=for-the-badge&logo=capacitor&logoColor=white" alt="Capacitor" /></a>
  <a href="https://developer.android.com/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android" /></a>
  <a href="https://developer.apple.com/ios/" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white" alt="iOS" /></a>
  <a href="https://github.com/parallax/jsPDF" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/jsPDF-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" alt="jsPDF" /></a>
  <a href="https://github.com/exceljs/exceljs" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/ExcelJS-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white" alt="ExcelJS" /></a>
</p>

<p align="center">
  <a href="./README.md" style="display:inline-block;margin:0 6px;"><img src="https://img.shields.io/badge/English-0052CC?style=for-the-badge&logo=github&logoColor=white" alt="English" /></a>
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

Multi-platform release artifacts (`.exe`, `.deb`, `.dmg`, `.apk`, `.aab`, iOS simulator zip) are published to [GitHub Releases](https://github.com/oooargon/line-cut-optimizer/releases) on `v*` tag push.

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

5. **PowerFab / FabTrol / ProNest**:
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
├── app/                        # Next.js App Router entry
│   ├── layout.tsx              # Root layout
│   ├── page.tsx                # Main page (mounts CuttingCalculator)
│   └── globals.css             # Global styles
├── components/                 # React components / UI
│   ├── CuttingCalculator.tsx   # Main calculator + UI logic
│   ├── CuttingVisualization.tsx# Cutting patterns visualization
│   ├── AboutModal.tsx          # In‑app README / license viewer
│   └── TechCardComparison.tsx  # Tekla tech card comparison UI
├── lib/                        # Core domain logic
│   ├── cutting-stock.ts        # Cutting stock algorithm
│   ├── long-part-splitter.ts   # Long parts A/B splitter
│   ├── excel-parser.ts         # Standard Excel / Blank‑RZ parser
│   ├── tekla_tech_card.ts      # Tekla tech card parser
│   ├── advance_steel_parser.ts # Advance Steel XML / Excel parser
│   ├── blank_rz.ts             # Blank‑RZ helpers and weight calc
│   ├── fabtrol_generator.ts    # FabTrol XML export for ProNest/PowerFab
│   ├── tech_card_comparator.ts # Tekla tech card comparison logic
│   ├── pdf-font-loader.ts      # PDF font preloading for jsPDF
│   ├── asset-path.ts           # Asset path helper (web/Electron)
│   └── format-utils.ts         # Mark/label formatting helpers
├── public/                     # Static assets
│   ├── icons/                  # UI icons (Excel, Tekla, ADS, FabTrol, etc.)
│   └── assets/                 # Images and other assets
├── examples/                   # Sample input files
│   ├── advance/                # Advance Steel extracts (XML)
│   ├── blank_rz/               # Blank‑RZ Excel samples
│   └── PowerFab/               # FabTrol / PowerFab examples
├── out/                        # Static export / build artifacts
└── package.json                # Dependencies and scripts
```

### 📜 License

MIT
