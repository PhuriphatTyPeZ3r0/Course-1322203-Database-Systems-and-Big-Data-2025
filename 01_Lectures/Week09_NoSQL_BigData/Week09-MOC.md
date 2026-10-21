---
tags: [dbds, week9, moc]
course: 1322203
course-name: Database and Big Data Systems (ระบบฐานข้อมูลและข้อมูลขนาดใหญ่)
week: 9
date: 2025-11-04
instructor: อ.วุฒิกานต์ หงษ์เวียงจันทร์ (Aj. Golf)
source: "1313305_Intro_Big_Data.pdf, 1313305_Big_Data_Technology.pdf, NoSQL.pdf, Introduction-to-MongoDB.pdf"
---

# Week 9 — Big Data Foundations, NoSQL Databases & MongoDB (MOC)

<span class="material-symbols-outlined">arrow_back</span> สัปดาห์ก่อนหน้า: [[Week08-MOC|MOC สัปดาห์ 8]]

## <span class="material-symbols-outlined">check_circle</span> เช็คลิสต์ก่อนเข้าเรียน

- [ ] ศึกษาคุณลักษณะ 5Vs ของข้อมูลขนาดใหญ่ และประเภทของข้อมูล (Structured, Semi-Structured, Unstructured) — ดู [[01_Big-Data-Foundations-and-5Vs-Characteristics]]
- [ ] ทำความเข้าใจทฤษฎีบท CAP Theorem และการจำแนก NoSQL ออกเป็น 4 ตระกูลหลัก — ดู [[02_NoSQL-Database-Types-and-CAP-Theorem]]
- [ ] เปรียบเทียบโครงสร้างเชิงสัมพันธ์ (RDBMS) กับโครงสร้างเอกสาร BSON ใน MongoDB — ดู [[03_MongoDB-Architecture-and-Document-Model]]

## <span class="material-symbols-outlined">assignment</span> ภาพรวมสัปดาห์ 9 (สรุปย่อ)

สัปดาห์ที่ 9 เปิดประตูสู่โลกของข้อมูลยุคใหม่ (Modern Data Paradigm) เมื่อฐานข้อมูลเชิงสัมพันธ์แบบดั้งเดิม (RDBMS) เริ่มเผชิญขีดจำกัดด้านการขยายขนาด (Scale-up Limitation) และต้นทุนที่มหาศาลเมื่อต้องรองรับข้อมูลระดับเพตาไบต์ (Petabytes) จึงเกิดแนวคิด Big Data และเทคโนโลยีการจัดเก็บแบบกระจาย (Hadoop HDFS, Spark, Cloud Object Storage) พร้อมทั้งการถือกำเนิดของฐานข้อมูลแบบ NoSQL ("Not Only SQL") ที่มีจุดเด่นเรื่อง Schema ยืดหยุ่นและการขยายตัวแนวนอน (Scale-out) โดยเจาะลึก 4 รูปแบบ NoSQL ทฤษฎี CAP Theorem และการประยุกต์ใช้งาน MongoDB (Document Database) ผ่าน BSON และคำสั่ง CRUD พื้นฐาน

## <span class="material-symbols-outlined">map</span> แผนที่หัวข้อสัปดาห์ 9

```mermaid
graph TD
    MOC[Week 9: Big Data & NoSQL] --> A[[01_Big-Data-Foundations-and-5Vs-Characteristics]]
    MOC --> B[[02_NoSQL-Database-Types-and-CAP-Theorem]]
    MOC --> C[[03_MongoDB-Architecture-and-Document-Model]]

    A --> A1[Big Data 5Vs: Volume, Velocity, Variety, Veracity, Value]
    A --> A2[Data Types: Structured, Semi, Unstructured]
    A --> A3[Distributed Storage: HDFS vs RDBMS]

    B --> B1[NoSQL Driver: Horizontal vs Vertical Scaling]
    B --> B2[4 Families: Key-Value, Document, Column, Graph]
    B --> B3[CAP Theorem: Consistency, Availability, Partitioning]
    B --> B4[BASE vs ACID Model]

    C --> C1[MongoDB Core: Database, Collection, Document]
    C --> C2[JSON to BSON Representation]
    C --> C3[Document Embedding vs Referencing]
    C --> C4[CRUD Operations: insert, find, update, delete]

    style MOC fill:#2b6cb0,color:#fff
    style A fill:#38a169,color:#fff
    style B fill:#dd6b20,color:#fff
    style C fill:#805ad5,color:#fff
```

## <span class="material-symbols-outlined">collections_bookmark</span> โน้ตรายหัวข้อ

| หัวข้อ | เนื้อหาหลัก | หน้าสไลด์ / แหล่งอ้างอิง |
| --- | --- | --- |
| [[01_Big-Data-Foundations-and-5Vs-Characteristics]] | นิยาม Big Data, คุณลักษณะ 5Vs, ที่มาของข้อมูล (IoT, Social Media), เทคโนโลยีจัดเก็บแบบกระจาย | Intro Big Data & Tech น. 1–23 |
| [[02_NoSQL-Database-Types-and-CAP-Theorem]] | ความแตกต่าง RDBMS vs NoSQL, การ Scale-out, 4 รูปแบบ NoSQL, CAP Theorem และ BASE | NoSQL น. 1–20 |
| [[03_MongoDB-Architecture-and-Document-Model]] | สถาปัตยกรรม MongoDB, การแปลงตารางสู่ Document BSON, การออกแบบ Embedding, คำสั่ง CRUD | Intro to MongoDB น. 1–43 |

> [!tip] เคล็ดลับการจำ CAP Theorem
> ในระบบแบบกระจาย (Distributed System) หากเกิดปัญหาเครือข่ายขาดการเชื่อมต่อ (**Partition Tolerance - P** ซึ่งหลีกเลี่ยงไม่ได้ในโลกจริง) ระบบสามารถเลือกได้เพียงอย่างใดอย่างหนึ่งระหว่าง:
> - **CP (Consistency):** หยุดการทำงานบางส่วนเพื่อรักษาความถูกต้องของข้อมูลให้ตรงกันทุกโหนด (เช่น MongoDB, HBase)
> - **AP (Availability):** อนุญาตให้ใช้งานต่อได้ทันทีแม้ข้อมูลแต่ละโหนดยังไม่เท่ากัน แล้วค่อยซิงค์ทีหลังผ่าน Eventual Consistency (เช่น Cassandra, DynamoDB, CouchDB)

<span class="material-symbols-outlined">arrow_forward</span> สัปดาห์ถัดไป: [[Week10-MOC|MOC สัปดาห์ 10]]
