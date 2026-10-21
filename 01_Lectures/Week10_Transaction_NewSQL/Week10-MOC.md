---
tags: [dbds, week10, moc]
course: 1322203
course-name: Database and Big Data Systems (ระบบฐานข้อมูลและข้อมูลขนาดใหญ่)
week: 10
date: 2025-11-11
instructor: อ.วุฒิกานต์ หงษ์เวียงจันทร์ (Aj. Golf)
source: "Transaction_Database.pdf, NewSQL.pdf"
---

# Week 10 — Database Transactions, ACID & NewSQL Architecture (MOC)

<span class="material-symbols-outlined">arrow_back</span> สัปดาห์ก่อนหน้า: [[Week09-MOC|MOC สัปดาห์ 9]]

## <span class="material-symbols-outlined">check_circle</span> เช็คลิสต์ก่อนเข้าเรียน

- [ ] ทำความเข้าใจนิยามของ Transaction และหลักการ All-or-Nothing — ดู [[01_Database-Transactions-and-ACID-Properties]]
- [ ] ศึกษาคุณสมบัติ ACID ทั้ง 4 ด้าน และคำสั่ง `START TRANSACTION`, `COMMIT`, `ROLLBACK` — ดู [[01_Database-Transactions-and-ACID-Properties]]
- [ ] วิเคราะห์ปัญหาภาวะพร้อมกัน (Concurrency Anomalies) และระดับ Isolation Levels — ดู [[02_Transaction-Lifecycle-and-Concurrency-Control]]
- [ ] ศึกษาการถือกำเนิดของ NewSQL ที่รวมข้อดีของ SQL (ACID) และ NoSQL (Scale-out) เข้าด้วยกัน — ดู [[03_NewSQL-Architecture-and-Modern-Distributed-Databases]]

## <span class="material-symbols-outlined">assignment</span> ภาพรวมสัปดาห์ 10 (สรุปย่อ)

สัปดาห์ที่ 10 เป็นการปิดท้ายหลักสูตรอย่างสมบูรณ์แบบด้วยสองหัวข้อระดับสูงของระบบฐานข้อมูล เริ่มต้นจากกลไกการรักษาความถูกต้องของข้อมูลผ่าน **Database Transaction** และคุณสมบัติ **ACID (Atomicity, Consistency, Isolation, Durability)** การควบคุมการทำงานพร้อมกัน (Concurrency Control) การป้องกัน Dirty Read และการใช้คำสั่ง `COMMIT` / `ROLLBACK` จากนั้นขยายภาพสู่สถาปัตยกรรมยุคใหม่ **NewSQL** ซึ่งผสานพลังของ SQL แบบดั้งเดิม (คงไว้ซึ่ง ACID และ relational schema) เข้ากับขีดความสามารถในการขยายระบบแนวนอน (Horizontal Scalability) ของ NoSQL ผ่านเทคโนโลยีอย่าง Raft/Paxos consensus, In-memory processing, และ Distributed Transaction Management (เช่น Google Spanner, CockroachDB, TiDB)

## <span class="material-symbols-outlined">map</span> แผนที่หัวข้อสัปดาห์ 10

```mermaid
graph TD
    MOC[Week 10: Transaction & NewSQL] --> A[[01_Database-Transactions-and-ACID-Properties]]
    MOC --> B[[02_Transaction-Lifecycle-and-Concurrency-Control]]
    MOC --> C[[03_NewSQL-Architecture-and-Modern-Distributed-Databases]]

    A --> A1[Transaction Concept: All-or-Nothing]
    A --> A2[ACID Foundations: Atomicity, Consistency, Isolation, Durability]
    A --> A3[Basic SQL: START TRANSACTION, COMMIT, ROLLBACK]

    B --> B1[Transaction State Lifecycle]
    B --> B2[Concurrency Issues: Dirty Read, Non-repeatable, Phantom]
    B --> B3[4 Isolation Levels: Read Uncommitted to Serializable]

    C --> C1[Database Evolution: SQL &rarr; NoSQL &rarr; NewSQL]
    C --> C2[4 NewSQL Pillars: In-Memory, Consensus, 2PC, Sharding]
    C --> C3[Modern Implementations: Google Spanner, CockroachDB, TiDB]

    style MOC fill:#2b6cb0,color:#fff
    style A fill:#38a169,color:#fff
    style B fill:#dd6b20,color:#fff
    style C fill:#805ad5,color:#fff
```

## <span class="material-symbols-outlined">collections_bookmark</span> โน้ตรายหัวข้อ

| หัวข้อ | เนื้อหาหลัก | หน้าสไลด์ / แหล่งอ้างอิง |
| --- | --- | --- |
| [[01_Database-Transactions-and-ACID-Properties]] | นิยามทรานแซกชัน, ตัวอย่างโอนเงินธนาคาร, คุณสมบัติ ACID 4 ด้าน, คำสั่ง `COMMIT` และ `ROLLBACK` | Transaction Database น. 1–8 |
| [[02_Transaction-Lifecycle-and-Concurrency-Control]] | วงจรชีวิตของ Transaction (Active, Partially Committed, Failed, Aborted), Concurrency Problems, Isolation Levels | Transaction Database น. 9–20 |
| [[03_NewSQL-Architecture-and-Modern-Distributed-Databases]] | ประวัติและจุดกำเนิด NewSQL (Matthew Aslett 2011), เสาหลัก 4 ด้าน, เปรียบเทียบ SQL vs NoSQL vs NewSQL | NewSQL น. 1–20 |

> [!tip] บทสรุปวิวัฒนาการของระบบฐานข้อมูล (The Ultimate Takeaway)
> - **SQL (RDBMS):** ACID สมบูรณ์แบบ, เหมาะกับระบบขนาดเล็ก-กลาง (Scale-up)
> - **NoSQL:** ขยายตัวแนวนอนง่าย (Scale-out), ยืดหยุ่นสูง แต่สละความเป็น ACID
> - **NewSQL:** ใช้ SQL + รับประกัน ACID 100% + ขยายตัวแนวนอนกระจายทั่วโลกได้แบบ NoSQL (The Best of Both Worlds)

---
<span class="material-symbols-outlined">arrow_forward</span> ย้อนกลับไปหน้าหลัก: [[README|หน้าแรกของรายวิชา 1322203]]
