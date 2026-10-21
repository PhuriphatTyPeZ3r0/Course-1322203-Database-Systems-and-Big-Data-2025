---
tags: [dbds, meta, guide]
---

# คู่มือ Format การสรุปโน้ตวิชา Database and Big Data Systems (1322203)

โน้ตทุกไฟล์ในวิชานี้ใช้ format มาตรฐานเดียวกันกับระบบ Obsidian Vault ของหลักสูตร เพื่อให้:
- สแกนและทบทวนเนื้อหาได้รวดเร็ว (ไอคอนและลำดับหัวข้อคงที่ สื่อความหมายชัดเจน)
- เชื่อมโยง Backlink ระหว่างโน้ตหัวข้อย่อย ↔ MOC ประจำสัปดาห์ได้อย่างสมบูรณ์
- เป็นระเบียบและค้นหาข้อมูลได้ง่าย

## กฎ Frontmatter

| field | โน้ตหัวข้อ | MOC | หมายเหตุ |
| --- | --- | --- | --- |
| `tags` | `[dbds, weekN, <topic-tag>]` | `[dbds, weekN, moc]` | topic-tag เลือก 1-2 คำที่สื่อเนื้อหา |
| `course` | `1322203` | `1322203` | รหัสวิชา |
| `week` | เลขสัปดาห์ | เลขสัปดาห์ | ตรงกับเลขใน tags |
| `date` | `{{date}}` | `{{date}}` | วันที่สร้างโน้ต |
| `course-name`, `instructor`, `source` | ไม่ใช้ | ใช้ | มีเฉพาะใน MOC เท่านั้น |

## กฎโครงสร้างโน้ตรายหัวข้อ (`Lecture-Note-Template.md`)

1. **H1** — ชื่อหัวข้อภาษาไทย (พร้อมภาษาอังกฤษกำกับในวงเล็บ)
2. **บรรทัด nav บนสุด** — `<span class="material-symbols-outlined">arrow_back</span> กลับไปที่ [[WeekN-MOC|MOC สัปดาห์ N]] | ก่อนหน้า: [[...]]`
3. **<span class="material-symbols-outlined">key</span> Keyword** — คำศัพท์/แนวคิดหลักแบบ **ตัวหนา** + คำอธิบาย 1 บรรทัด
4. **<span class="material-symbols-outlined">menu_book</span> Theory (เข้าใจง่าย)** — เนื้อหาทฤษฎีหลัก มีตาราง สูตร SQL syntax หรือตัวอย่างคิวรี
5. **<span class="material-symbols-outlined">schema</span> Diagram** — แผนภาพมาตรฐาน เช่น ER Diagram, Relational Schema, State Machine หรือ Flowchart
6. **บรรทัดปิดท้าย** — `---` ตามด้วยลิงก์นำทางต่อไป

## กฎโครงสร้าง MOC (`MOC-Template.md`)

1. **H1** — `Week N — <ชื่อหัวข้อสัปดาห์ภาษาอังกฤษ> (MOC)`
2. **บรรทัด nav บนสุด** — ลิงก์สัปดาห์ก่อนหน้า (ถ้ามี)
3. **<span class="material-symbols-outlined">check_circle</span> เช็คลิสต์ก่อนเข้าเรียน**
4. **<span class="material-symbols-outlined">assignment</span> ภาพรวมสัปดาห์ N (สรุปย่อ)**
5. **<span class="material-symbols-outlined">map</span> แผนที่หัวข้อสัปดาห์ N** (Mermaid `graph TD`)
6. **<span class="material-symbols-outlined">collections_bookmark</span> โน้ตรายหัวข้อ** (ตารางหัวข้อ / เนื้อหาหลัก / หน้าสไลด์)
7. **callout ปิดท้าย** (`[!tip]`, `[!important]`, `[!example]`)
8. **บรรทัดปิดท้าย** — ลิงก์สัปดาห์ถัดไป
