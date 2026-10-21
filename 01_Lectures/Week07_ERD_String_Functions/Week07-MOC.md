---
tags: [dbds, week7, moc]
course: 1322203
course-name: Database and Big Data Systems (ระบบฐานข้อมูลและข้อมูลขนาดใหญ่)
week: 7
date: 2025-10-21
instructor: อ.วุฒิกานต์ หงษ์เวียงจันทร์ (Aj. Golf)
source: "DB Design using ERD.pdf, SQL_String_Functions.pdf"
---

# Week 7 — ER Diagram Design, Relational Mapping & String Functions (MOC)

<span class="material-symbols-outlined">arrow_back</span> สัปดาห์ก่อนหน้า: [[Week06-MOC|MOC สัปดาห์ 6]]

## <span class="material-symbols-outlined">check_circle</span> เช็คลิสต์ก่อนเข้าเรียน

- [ ] ศึกษา 3 ลำดับขั้นของการออกแบบฐานข้อมูล: Conceptual $\rightarrow$ Logical $\rightarrow$ Physical Design — ดู [[01_Database-Design-Lifecycle-and-ER-Modeling]]
- [ ] จดจำกฎการแปลง ER Diagram เป็น Relational Schema โดยเฉพาะความสัมพันธ์แบบ M:N และ Multivalued Attributes — ดู [[02_ER-Diagram-to-Relational-Schema-Mapping]]
- [ ] ฝึกใช้ฟังก์ชันตัดต่อข้อความ `LEFT`, `RIGHT`, และ `SUBSTRING` เพื่อสกัดปี/เดือนจากฟิลด์วันที่ — ดู [[03_SQL-Builtin-String-Functions-and-Date-Extraction]]

## <span class="material-symbols-outlined">assignment</span> ภาพรวมสัปดาห์ 7 (สรุปย่อ)

สัปดาห์ที่ 7 รวบรวมองค์ความรู้ด้านการออกแบบสถาปัตยกรรมฐานข้อมูลตั้งแต่ต้นน้ำจนถึงปลายน้ำ เริ่มต้นจากวงจรการพัฒนาระบบฐานข้อมูล (DSDLC) การสร้างแบบจำลองแนวคิดด้วย ER Model (ระบุ Strong/Weak Entity, ชนิดของ Attribute, Cardinality 1:1, 1:N, M:N) จากนั้นเข้าสู่ขั้นตอน Logical Design ด้วยกฎมาตรฐานการแปลง ER Diagram สู่เค้าร่างรีเลชัน (Relational Schema Mapping) และปิดท้ายด้วยการประยุกต์ใช้ฟังก์ชันจัดการข้อความใน SQL (`LEFT`, `RIGHT`, `SUBSTRING`) สำหรับการตัดข้อมูลวันที่เพื่อวิเคราะห์พฤติกรรมการซื้อรายปีของลูกค้า

## <span class="material-symbols-outlined">map</span> แผนที่หัวข้อสัปดาห์ 7

```mermaid
graph TD
    MOC[Week 7: ERD Design & String Functions] --> A[[01_Database-Design-Lifecycle-and-ER-Modeling]]
    MOC --> B[[02_ER-Diagram-to-Relational-Schema-Mapping]]
    MOC --> C[[03_SQL-Builtin-String-Functions-and-Date-Extraction]]

    A --> A1[DSDLC: Conceptual, Logical, Physical]
    A --> A2[Entity Types: Strong vs Weak]
    A --> A3[Attribute Classifications]
    A --> A4[Cardinality & Participation Constraints]

    B --> B1[1:1 Mapping Rules]
    B --> B2[1:N Mapping: FK Placement]
    B --> B3[M:N Mapping: Junction Table Creation]
    B --> B4[Multivalued Attribute Tables]

    C --> C1[LEFT, RIGHT, SUBSTRING Syntax]
    C --> C2[Date Part Extraction Techniques]
    C --> C3[Annual Purchase Analysis Queries]

    style MOC fill:#2b6cb0,color:#fff
    style A fill:#38a169,color:#fff
    style B fill:#dd6b20,color:#fff
    style C fill:#805ad5,color:#fff
```

## <span class="material-symbols-outlined">collections_bookmark</span> โน้ตรายหัวข้อ

| หัวข้อ | เนื้อหาหลัก | หน้าสไลด์ / แหล่งอ้างอิง |
| --- | --- | --- |
| [[01_Database-Design-Lifecycle-and-ER-Modeling]] | DSDLC, การวิเคราะห์ความต้องการ, สัญลักษณ์ ER Model, ประเภท Entity และ Attribute | DB Design using ERD น. 1–35 |
| [[02_ER-Diagram-to-Relational-Schema-Mapping]] | กฎ 7 ข้อในการแปลง ER Diagram สู่ Relational Schema (1:1, 1:N, M:N, Composite, Multivalued) | DB Design using ERD น. 36–100 |
| [[03_SQL-Builtin-String-Functions-and-Date-Extraction]] | ฟังก์ชัน `LEFT`, `RIGHT`, `SUBSTRING`, และโจทย์วิเคราะห์ลูกค้าที่สั่งซื้อสินค้าครบทุกปี | SQL String Functions น. 1–16 |

> [!tip] เคล็ดลับการสอบแปลง ERD สู่ตาราง
> จำแม่น ๆ: **"M:N ต้องแตกตารางใหม่เสมอ (Junction Table)"** โดยตารางใหม่จะมี Composite Primary Key ที่ประกอบด้วย Foreign Key จากทั้งสองฝั่ง และหากมี Relationship Attribute (เช่น `Quantity`, `Date`) ให้ย้ายมาอยู่ในตารางใหม่นี้ด้วย

<span class="material-symbols-outlined">arrow_forward</span> สัปดาห์ถัดไป: [[Week08-MOC|MOC สัปดาห์ 8]]
