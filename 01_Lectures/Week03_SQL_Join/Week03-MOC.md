---
tags: [dbds, week3, moc]
course: 1322203
course-name: Database and Big Data Systems (ระบบฐานข้อมูลและข้อมูลขนาดใหญ่)
week: 3
date: 2025-09-23
instructor: อ.วุฒิกานต์ หงษ์เวียงจันทร์ (Aj. Golf)
source: "SQL_Join.pdf, database_week3.sql"
---

# Week 3 — SQL Joins and Multi-Table Relationships (MOC)

<span class="material-symbols-outlined">arrow_back</span> สัปดาห์ก่อนหน้า: [[Week02-MOC|MOC สัปดาห์ 2]]

## <span class="material-symbols-outlined">check_circle</span> เช็คลิสต์ก่อนเข้าเรียน

- [ ] ทำความเข้าใจแนวคิดการเชื่อมตารางผ่าน Primary Key และ Foreign Key — ดู [[01_SQL-Join-Fundamentals-and-Inner-Join]]
- [ ] ศึกษาข้อแตกต่างระหว่าง INNER JOIN, LEFT JOIN, RIGHT JOIN และ FULL JOIN — ดู [[02_Outer-Joins-Left-Right-Full-and-Self-Join]]
- [ ] ทดลองใช้ Table Alias เพื่อย่อชื่อตารางและแก้ปัญหาชื่อคอลัมน์ซ้ำกัน — ดู [[01_SQL-Join-Fundamentals-and-Inner-Join]]

## <span class="material-symbols-outlined">assignment</span> ภาพรวมสัปดาห์ 3 (สรุปย่อ)

สัปดาห์ที่ 3 เน้นการดึงข้อมูลจากหลายตารางที่มีความสัมพันธ์กันด้วยคำสั่ง `JOIN` ในภาษา SQL ครอบคลุมการทำงานของ `INNER JOIN` ที่เลือกเฉพาะแถวที่มีค่าตรงกันทั้งสองฝั่ง, กลุ่มของ `OUTER JOIN` ได้แก่ `LEFT JOIN` (รักษาข้อมูลตารางซ้ายครบทุกแถว), `RIGHT JOIN` (รักษาตารางขวาครบ) และ `FULL OUTER JOIN` (รักษาข้อมูลทั้งสองฝั่ง หากไม่มีคู่ให้เป็นค่า NULL) ตลอดจนเทคนิค `Self Join` สำหรับตารางที่มีความสัมพันธ์แบบลำดับชั้นภายในตัวเอง (เช่น ตารางพนักงานกับหัวหน้างาน) และการเขียนเชื่อมโยง 3 ตารางขึ้นไป

## <span class="material-symbols-outlined">map</span> แผนที่หัวข้อสัปดาห์ 3

```mermaid
graph TD
    MOC[Week 3: SQL Joins] --> A[[01_SQL-Join-Fundamentals-and-Inner-Join]]
    MOC --> B[[02_Outer-Joins-Left-Right-Full-and-Self-Join]]

    A --> A1[Join Concept & ON Clause]
    A --> A2[INNER JOIN Mechanics]
    A --> A3[Table Aliases & Multi-Table Joins]

    B --> B1[LEFT JOIN: Preserving Left Table]
    B --> B2[RIGHT JOIN: Preserving Right Table]
    B --> B3[FULL JOIN Emulation in MySQL]
    B --> B4[Self Join: Hierarchical Queries]

    style MOC fill:#2b6cb0,color:#fff
    style A fill:#38a169,color:#fff
    style B fill:#dd6b20,color:#fff
```

## <span class="material-symbols-outlined">collections_bookmark</span> โน้ตรายหัวข้อ

| หัวข้อ | เนื้อหาหลัก | หน้าสไลด์ |
| --- | --- | --- |
| [[01_SQL-Join-Fundamentals-and-Inner-Join]] | แนวคิดการเชื่อมตาราง, ไวยากรณ์ `INNER JOIN ... ON ...`, การใช้ Table Alias, การ Join 3 ตาราง | SQL Join น. 1–6, 12–15 |
| [[02_Outer-Joins-Left-Right-Full-and-Self-Join]] | `LEFT JOIN`, `RIGHT JOIN`, การจัดการค่า `NULL`, การทำ `FULL OUTER JOIN` ด้วย `UNION`, และ `Self Join` | SQL Join น. 7–11, 16–30 |

> [!tip] เคล็ดลับการจำ Venn Diagram ของ Join
> - **INNER JOIN:** ส่วนซ้อนทับ (Intersection) ของ 2 วงกลม
> - **LEFT JOIN:** วงกลมซ้ายทั้งวง (รวมส่วนที่ซ้อนทับกับวงขวา) หากวงขวาไม่มีข้อมูล ค่าจะเป็น `NULL`
> - **RIGHT JOIN:** วงกลมขวาทั้งวง (รวมส่วนที่ซ้อนทับกับวงซ้าย)
> - **หาข้อมูลที่ "ไม่มีการสั่งซื้อ":** ใช้ `LEFT JOIN` แล้วใส่เงื่อนไข `WHERE Orders.OrderID IS NULL`

<span class="material-symbols-outlined">arrow_forward</span> สัปดาห์ถัดไป: [[Week04-MOC|MOC สัปดาห์ 4]]
