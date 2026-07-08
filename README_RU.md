<h1 align="center">Генератор карт раскроя и MES‑отчётов</h1>

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

## 📋 Аннотация

**LineCut Optimizer** - приложение для генерации карт раскроя и производственных отчётов (MES) для стальных профилей (балок, труб, швеллеров, уголков и пр.) а также экспорт FabTrol(xml)-списков для последующего автоматического раскроя с помощью ProNest (для версии 2021 и выше).

Приложение решает **Задачу оптимального раскроя** (также известную как задача упаковки в контейнеры) — классическую задачу оптимизации в исследовании операций. Задача заключается в раскрое стандартных заготовок (таких как трубы, профили, арматура или листовой металл) на детали заданных размеров при минимизации отходов материала.

Приложение реализует жадный алгоритм с генерацией паттернов для поиска близких к оптимальным решений раскроя. Оно поддерживает:
- Несколько длин заготовок с ограничениями по количеству
- Несколько размеров деталей с требуемыми количествами
- Параметры торцевого спила и толщины лезвия
- Отслеживание марок и позиций деталей
- Импорт/экспорт Excel файлов
- Визуальное представление паттернов раскроя

Этот инструмент предназначен для промышленных приложений, где сокращение отходов материала напрямую влияет на производственные затраты и эффективность.

---

## 🔍 Обзор

Веб-калькулятор для оптимального раскроя линейных материалов (трубы, профили, арматура и т.д.), решающий задачу оптимального раскроя с использованием генерации паттернов и жадных алгоритмов оптимизации.

### ✨ Возможности

- ✅ **Управление заготовками**: Определение нескольких длин заготовок с ограничениями по количеству (включая неограниченное)
- ✅ **Управление деталями**: Ручное добавление деталей или импорт из Excel файлов
- ✅ **Отслеживание марок и позиций**: Отслеживание марок и позиций деталей для планирования производства
- ✅ **Импорт/Экспорт Excel**: Импорт списков раскроя из Excel и экспорт паттернов раскроя
- ✅ **Визуализация паттернов**: Интерактивная визуализация паттернов раскроя с индикаторами отходов
- ✅ **Параметры оптимизации**: Настройка торцевых спилов и толщины лезвия для точных расчетов
- ✅ **Статистика в реальном времени**: Просмотр общих отходов, эффективности и использования заготовок

### 🛠️ Технологический стек

- **Next.js 16** - React фреймворк с App Router
- **TypeScript** - Типобезопасная разработка
- **Tailwind CSS 4** - Современная стилизация
- **ExcelJS** - Парсинг и генерация Excel файлов
- **jsPDF** - Генерация PDF документов
- **Electron** - Платформа для создания десктопных приложений
- **Capacitor** - Android и iOS (обёртка WebView поверх статического Next.js)

### 📦 Установка

```bash
npm install
```

### 🚀 Разработка

```bash
npm run dev
```

Приложение будет доступно по адресу [http://localhost:3000](http://localhost:3000)

### 🏗️ Сборка для продакшена

```bash
npm run build
npm start
```

### 📱 Мобильная сборка (Android)

```bash
npm run mobile:apk:debug    # debug APK (после next build + cap sync)
npm run mobile:apk:release  # release APK
npm run mobile:android      # открыть проект в Android Studio
```

Готовый APK: `android/app/build/outputs/apk/debug/app-debug.apk`

Релизные артефакты всех платформ (`.exe`, `.deb`, `.dmg`, `.apk`, `.aab`, iOS simulator) публикуются в [GitHub Releases](https://github.com/oooargon/line-cut-optimizer/releases) при push тега `v*`.

### 🖥️ Десктоп (Electron)

```bash
make                  # Windows portable
npm run electron:linux
npm run electron:mac
```

### 📊 Форматы импорта/экспорта файлов

<div align="center">

<table>
  <tr>
    <td>
      <img src="./public/icons/xl.svg" alt="Стандартный Excel / Blank‑RZ" width="48" /><br />
      <strong>Стандартный Excel / Blank‑RZ</strong><br />
      <sub>Импорт/экспорт простых списков раскроя и шаблонов Blank‑RZ.</sub>
    </td>
    <td>
      <img src="./public/icons/tekla.svg" alt="Tekla Structures" width="48" /><br />
      <strong>Tekla Structures</strong><br />
      <sub>Импорт технологических карт с автоматическим разбором профилей и фасонки.</sub>
    </td>
  </tr>
  <tr>
    <td>
      <img src="./public/icons/ads.svg" alt="Advance Steel" width="48" /><br />
      <strong>Advance Steel</strong><br />
      <sub>Импорт BOM‑экстрактов (`.xml`, `.xlsx`) с разбором сборок, фасонки и монтажных элементов.</sub>
    </td>
    <td>
      <img src="./public/icons/fabtrol.svg" alt="PowerFab / FabTrol / ProNest" width="48" /><br />
      <strong>PowerFab / FabTrol / ProNest</strong><br />
      <sub>Импорт заказов PowerFab/FabTrol и экспорт листовой фасонки в FabTrol XML для ProNest.</sub>
    </td>
  </tr>
</table>

</div>

Приложение поддерживает несколько режимов импорта и интеграций:

1. **Стандартный Excel**:
   - Ожидаемые колонки:
     - **ДЛИНА** (или LENGTH) — длина детали в миллиметрах
     - **ШТУК** (или QUANTITY) — количество требуемых деталей
     - **МАРКА** (или MARK) — опциональная марка/идентификатор детали
     - **ПОЗИЦИ** (или POSITION) — опциональная позиция детали
   - Расширения: `.xlsx`, `.xlsm`

2. **Blank‑RZ (Excel‑шаблон)**:
   - Импорт спецификаций по шаблону Blank‑RZ (листовые и профильные детали).
   - Расширения: `.xlsx`, `.xlsm`

3. **Tekla Structures**:
   - Импорт "Технологической карты".
   - Расширения: `.xlsx`

4. **Advance Steel**:
   - Импорт экстрактов (BOM) в формате XML или списков Excel.
   - Расширения: `.xml`, `.xlsx`
   - Поддерживает иерархию сборок (балки/трубы + приваренные пластины) и автоматически разделяет фасонку и монтажные элементы.

5. **PowerFab / FabTrol / ProNest**:
   - Экспорт листовой фасонки по маркам стали в FabTrol XML `pronest-cutting-list.xml` для загрузки в ProNest / PowerFab.

### ⚙️ Алгоритм

Приложение использует жадный алгоритм с генерацией паттернов:

1. Генерирует все возможные паттерны раскроя для каждой длины заготовки
2. Выбирает паттерны с минимальными отходами
3. Оптимизирует использование материала путем итеративного применения лучших паттернов
4. Отслеживает отдельные детали с марками и позициями

### 📖 Использование

1. **Настройка параметров**: Установите торцевой спил и толщину лезвия
2. **Добавление заготовок**: Определите длины заготовок и их количество
3. **Добавление деталей**: Вручную введите детали или импортируйте из Excel
4. **Расчёт**: Запустите алгоритм оптимизации
5. **Просмотр результатов**: Просмотрите паттерны раскроя и статистику
6. **Визуализация**: Нажмите "Показать раскрой" для просмотра визуальных паттернов раскроя
7. **Экспорт**: Сохраните результаты в Excel файл или PDF

### 📁 Структура проекта

```
line-cut-optimizer/
├── app/                        # Next.js App Router
│   ├── layout.tsx              # Корневой layout
│   ├── page.tsx                # Главная страница (монтирует CuttingCalculator)
│   └── globals.css             # Глобальные стили
├── components/                 # React‑компоненты / UI
│   ├── CuttingCalculator.tsx   # Основной калькулятор + UI‑логика
│   ├── CuttingVisualization.tsx# Визуализация карт раскроя
│   ├── AboutModal.tsx          # Встроенный просмотр README / лицензии
│   └── TechCardComparison.tsx  # UI сравнения техкарт Tekla
├── lib/                        # Основная доменная логика
│   ├── cutting-stock.ts        # Алгоритм линейного раскроя
│   ├── long-part-splitter.ts   # Модуль разбиения длинных деталей на А/Б
│   ├── excel-parser.ts         # Парсер стандартного Excel / Blank‑RZ
│   ├── tekla_tech_card.ts      # Парсер технологических карт Tekla
│   ├── advance_steel_parser.ts # Парсер XML/Excel exctract‑ов Advance Steel
│   ├── blank_rz.ts             # Хелперы Blank‑RZ и расчёт массы
│   ├── fabtrol_generator.ts    # Экспорт FabTrol XML для ProNest/PowerFab
│   ├── tech_card_comparator.ts # Логика сравнения техкарт Tekla
│   ├── pdf-font-loader.ts      # Предзагрузка шрифтов для jsPDF
│   ├── asset-path.ts           # Хелпер путей к ассетам (web/Electron)
│   └── format-utils.ts         # Форматирование марок/подписей
├── public/                     # Статические ассеты
│   ├── icons/                  # Иконки UI (Excel, Tekla, ADS, FabTrol и т.д.)
│   └── assets/                 # Изображения и прочие ресурсы
├── examples/                   # Примеры входных файлов
│   ├── advance/                # Экстракты Advance Steel (XML)
│   ├── blank_rz/               # Примеры Excel Blank‑RZ
│   └── PowerFab/               # Примеры FabTrol / PowerFab
├── out/                        # Статический экспорт / артефакты сборки
└── package.json                # Зависимости и npm‑скрипты
```

### 📜 Лицензия

MIT
