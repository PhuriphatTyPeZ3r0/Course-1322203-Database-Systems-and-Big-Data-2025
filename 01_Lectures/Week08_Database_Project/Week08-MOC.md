---
tags: [dbds, week8, moc]
course: 1322203
course-name: Database and Big Data Systems (ระบบฐานข้อมูลและข้อมูลขนาดใหญ่)
week: 8
date: 2025-10-28
instructor: อ.วุฒิกานต์ หงษ์เวียงจันทร์ (Aj. Golf)
source: "naruto.sql, Database Project Guidelines"
---

# Week 8 — Database Case Study, Complex Queries & Midterm Integration (MOC)

<span class="material-symbols-outlined">arrow_back</span> สัปดาห์ก่อนหน้า: [[Week07-MOC|MOC สัปดาห์ 7]]

## <span class="material-symbols-outlined">check_circle</span> เช็คลิสต์ก่อนเข้าเรียน

- [ ] วิเคราะห์โครงสร้างความสัมพันธ์ 5 ตารางของฐานข้อมูลกรณีศึกษา (`naruto.sql`) — ดู [[01_Relational-Schema-Case-Study-Naruto-Database]]
- [ ] ฝึกเขียนคิวรีรวมมิตร (Join + Aggregate + SubQuery + String Function) — ดู [[02_Complex-Multi-Table-Queries-and-Optimization]]
- [ ] เตรียมพร้อมสำหรับการนำเสนอโครงงานระบบฐานข้อมูลประจำวิชา (Student Registration Desktop App) — ดู [[01_Relational-Schema-Case-Study-Naruto-Database]]

## <span class="material-symbols-outlined">assignment</span> ภาพรวมสัปดาห์ 8 (สรุปย่อ)

สัปดาห์ที่ 8 เป็นสัปดาห์แห่งการบูรณาการทักษะทั้งหมดที่ได้เรียนรู้มาตั้งแต่ Week 1 ถึง Week 7 โดยใช้ฐานข้อมูลกรณีศึกษา `naruto` (ประกอบด้วย 5 ตารางหลัก: `villages`, `teams`, `characters`, `jutsus`, `missions`) เพื่อฝึกฝนการเขียนคิวรีระดับสูง ทั้งการเชื่อมโยงข้อมูลหลายมิติ การจัดอันดับภารกิจ การคำนวณสถิติคาถานินจาตามประเภทจักระ พร้อมทั้งเป็นหมุดหมายสำคัญในการเตรียมโครงงานประจำรายวิชา (Student Registration App ด้วย Java + MySQL) ก่อนจะก้าวเข้าสู่หัวข้อ NoSQL และ Big Data ในสัปดาห์ถัดไป

## <span class="material-symbols-outlined">map</span> แผนที่หัวข้อสัปดาห์ 8

```mermaid
graph TD
    MOC[Week 8: Case Study & Query Integration] --> A[[01_Relational-Schema-Case-Study-Naruto-Database]]
    MOC --> B[[02_Complex-Multi-Table-Queries-and-Optimization]]

    A --> A1[5-Table Relational Schema Architecture]
    A --> A2[Entity Relationships & Foreign Keys]
    A --> A3[Project Integration: Java & MySQL]

    B --> B1[Multi-Table JOIN Across 4+ Relations]
    B --> B2[Jutsu & Mission Analytics Queries]
    B --> B3[Query Execution Plan & Indexing Tips]

    style MOC fill:#2b6cb0,color:#fff
    style A fill:#38a169,color:#fff
    style B fill:#dd6b20,color:#fff
```

## <span class="material-symbols-outlined">collections_bookmark</span> โน้ตรายหัวข้อ

| หัวข้อ | เนื้อหาหลัก | แหล่งอ้างอิง |
| --- | --- | --- |
| [[01_Relational-Schema-Case-Study-Naruto-Database]] | สถาปัตยกรรมเค้าร่างฐานข้อมูล `naruto.sql`, โครงสร้างตาราง, และผังความสัมพันธ์ ER | `naruto.sql` Data Dump |
| [[02_Complex-Multi-Table-Queries-and-Optimization]] | รวมโจทย์คิวรีประยุกต์ขั้นสูง: สถิติทักษะนินจา, การกระจายตัวของภารกิจ, และแนวคิดการจูน Index | Case Study Practice |

> [!tip] เคล็ดลับการทำข้อสอบประมวลผลบูรณาการ
> เมื่อเจอโจทย์คิวรีที่ถามข้อมูลข้ามหลายตาราง ให้เริ่มจาก:
> 1. เขียนชื่อตารางที่มีคอลัมน์ผลลัพธ์ที่ต้องการออกมาก่อน
> 2. ลากเส้นเชื่อม Primary Key ↔ Foreign Key ให้ครบทุกคู่ใน `FROM ... JOIN ... ON ...`
> 3. จากนั้นจึงค่อยใส่ `WHERE`, `GROUP BY`, และ `HAVING` ตามลำดับ

<span class="material-symbols-outlined">arrow_forward</span> สัปดาห์ถัดไป: [[Week09-MOC|MOC สัปดาห์ 9]]
