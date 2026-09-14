# 1322203 Database Systems and Big Data (ระบบฐานข้อมูลและข้อมูลขนาดใหญ่)

<div align="center">

[![Institution: PIM](https://img.shields.io/badge/Institution-PIM-003366?style=for-the-badge&logo=google-classroom&logoColor=white)](https://www.pim.ac.th/)
[![Faculty: CPE & AI](https://img.shields.io/badge/Faculty-CPE%20%26%20AI-blue?style=for-the-badge)](https://www.pim.ac.th/)
[![Academic Year](https://img.shields.io/badge/Academic%20Year-1.2%2F2568%20(2025)-orange?style=for-the-badge)](https://github.com/PhuriphatTyPeZ3r0)
[![Grade: A](https://img.shields.io/badge/Grade-A%20(4.00)-success?style=for-the-badge)](https://github.com/PhuriphatTyPeZ3r0)
[![Database: MySQL](https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Obsidian Compatible](https://img.shields.io/badge/Obsidian-Vault%20Ready-7C3AED?style=for-the-badge&logo=obsidian&logoColor=white)](https://obsidian.md/)

**คลังสรุปเนื้อหา แบบฝึกหัด เอกสาร และโครงงานรายวิชาระบบฐานข้อมูลและข้อมูลขนาดใหญ่**  
*สาขาวิชาวิศวกรรมคอมพิวเตอร์และปัญญาประดิษฐ์ (CPE & AI) — สถาบันการจัดการปัญญาภิวัฒน์ (PIM)*

</div>

---

## 📌 สารบัญ (Table of Contents)
- [📖 1. ข้อมูลรายวิชาเบื้องต้น (Course Information)](#-1-ข้อมูลรายวิชาเบื้องต้น-course-information)
- [📂 2. โครงสร้าง Repository (Standard Course Layout)](#-2-โครงสร้าง-repository-standard-course-layout)
- [📚 3. เนื้อหาและการบรรยาย (Lectures & Slides)](#-3-เนื้อหาและการบรรยาย-lectures--slides)
- [💻 4. แบบฝึกหัดและการทดลองภาคปฏิบัติ (Labs & Assignments)](#-4-แบบฝึกหัดและการทดลองภาคปฏิบัติ-labs--assignments)
- [🏆 5. โครงงานประจำรายวิชา (Course Projects)](#-5-โครงงานประจำรายวิชา-course-projects)
- [📝 6. สรุปทบทวนและเตรียมสอบ (Exams Review)](#-6-สรุปทบทวนและเตรียมสอบ-exams-review)
- [⚖️ 7. จริยธรรมทางวิชาการ (Academic Integrity Notice)](#-7-จริยธรรมทางวิชาการ-academic-integrity-notice)
- [👨‍💻 8. ผู้จัดทำ (Author)](#-8-ผู้จัดทำ-author)

---

## 📖 1. ข้อมูลรายวิชาเบื้องต้น (Course Information)

- **รหัสวิชา:** `1322203`
- **ชื่อวิชาภาษาอังกฤษ:** Database Systems and Big Data
- **ชื่อวิชาภาษาไทย:** ระบบฐานข้อมูลและข้อมูลขนาดใหญ่
- **หน่วยกิต:** 3 หน่วยกิต (3-0-6)
- **ภาคการศึกษา / ปีการศึกษา:** ภาคเรียนที่ 1.2 / ปีการศึกษา 2568 (2025)
- **ผลการเรียนที่ได้รับ (Grade):** **A (4.00)**
- **เทคโนโลยีหลัก:** Relational Databases, SQL, MySQL, Database Normalization (1NF-3NF, BCNF), Big Data Architecture

---

## 📂 2. โครงสร้าง Repository (Standard Course Layout)

```text
Course-1322203-Database-Systems-and-Big-Data-2025/
├── 00_Templates/               # Template โน้ตและคู่มือ format (Markdown/Obsidian)
├── 01_Lectures/                # เอกสารการสอนและสไลด์บรรยาย
│   ├── 01_Docs/               # เอกสารคำสอน, Relational Model, Data Modeling
│   └── 02_Teaching_Slides/    # สไลด์ประกอบการสอนประจำสัปดาห์
├── 02_Labs_Assignments/       # แบบฝึกหัด SQL DDL/DML, Reflection Sheets
│   └── Reflection_Sheet.pdf
├── 03_Projects/                # โครงงานระบบฐานข้อมูลประจำวิชา
│   └── Register-System/       # Student Registration Desktop App (Java Swing + MySQL)
├── 04_Exams_Review/            # สรุปทบทวนก่อนสอบกลางภาคและปลายภาค
└── README.md                   # เอกสารแนะนำและสารบัญหลัก
```

> **หมายเหตุ:** โครงสร้างนี้รองรับการเปิดอ่านบน GitHub และเปิดเป็น **Obsidian Vault** โดยสมบูรณ์

---

## 📚 3. เนื้อหาและการบรรยาย (Lectures & Slides)

| หมวดเนื้อหา | หัวข้อการบรรยาย (Core Database Topics) | รายละเอียดเนื้อหา | สไลด์ / เอกสาร |
| :---: | :--- | :--- | :---: |
| **Data Modeling** | **Relational Data Model & ER Diagrams** | สถาปัตยกรรม ANSI-SPARC, Entity-Relationship Modeling, Cardinality, Foreign Keys | [เอกสาร](01_Lectures/01_Docs/) |
| **Relational Algebra** | **Formal Relational Operations** | Selection ($\sigma$), Projection ($\pi$), Cartesian Product ($\times$), Joins ($\bowtie$) | [เอกสาร](01_Lectures/01_Docs/) |
| **Database Design** | **Functional Dependencies & Normalization** | การกำจัดความซ้ำซ้อนข้อมูล (Redundancy Elimination): 1NF, 2NF, 3NF, BCNF | [เอกสาร](01_Lectures/01_Docs/) |
| **SQL Standards** | **DDL, DML & Advanced Queries** | Data Definition Language, Complex Queries, Subqueries, Aggregation, Views | [เอกสาร](01_Lectures/01_Docs/) |
| **Big Data Systems** | **Big Data Foundations & Distributed Storage** | คุณลักษณะ 5Vs ของ Big Data, Data Warehousing, NoSQL, และ Distributed File Systems | [เอกสาร](01_Lectures/01_Docs/) |

---

## 💻 4. แบบฝึกหัดและการทดลองภาคปฏิบัติ (Labs & Assignments)

| ลำดับงาน | หัวข้อแบบฝึกหัด (Lab / Assignment) | สาระสำคัญและเนื้อหาการปฏิบัติ | โฟลเดอร์งาน |
| :---: | :--- | :--- | :---: |
| **Assign 01** | Database Reflection & Design Analysis | เอกสารวิเคราะห์สถาปัตยกรรมข้อมูลและการออกแบบโครงสร้างตารางเชิงสัมพันธ์ | [เปิดเอกสาร](02_Labs_Assignments/Reflection_Sheet.pdf) |
| **Assign 02** | SQL Query Optimization & Normalization | แบบฝึกหัดการเขียนคำสั่ง SQL สำหรับจัดการข้อมูลและพิสูจน์การจัดระเบียบตาราง | [เปิดโฟลเดอร์](02_Labs_Assignments/) |

---

## 🏆 5. โครงงานประจำรายวิชา (Course Projects)

> โครงงานระบบฐานข้อมูลและซอฟต์แวร์ที่พัฒนาขึ้นในรายวิชา (เก็บอยู่ในโฟลเดอร์ `03_Projects/`)

### 🗄️ Student Registration System (Register-System)
- **บทบาทและหน้าที่:** ระบบลงทะเบียนนักศึกษาและจัดการข้อมูลผู้เรียน เชื่อมต่อฐานข้อมูลเชิงสัมพันธ์ MySQL แบบเรียลไทม์
- **เทคโนโลยี:** `Java, Java Swing (NetBeans GUI), MySQL Connector/J 9.5.0, SQL Queries, Transaction Management`
- **ฟีเจอร์เด่น:**
  - เพิ่ม แก้ไข ค้นหา และลบข้อมูลผู้ลงทะเบียน (CRUD Operations)
  - Data Validation ป้องกันความซ้ำซ้อนของรหัสนักศึกษา
  - Transaction Management และจัดการ Connection Pool อย่างปลอดภัย
- **โฟลเดอร์โครงงาน:** [Register-System](03_Projects/Register-System/)

---

## 📝 6. สรุปทบทวนและเตรียมสอบ (Exams Review)

- [x] **สรุปทบทวนการสอบกลางภาค (Midterm Review):** [บันทึกสรุป Relational Model และ Normalization](04_Exams_Review/)
- [x] **สรุปทบทวนการสอบปลายภาค (Final Review):** [บันทึกสรุป SQL, Indexing, Transactions และ Big Data](04_Exams_Review/)

---

## ⚖️ 7. จริยธรรมทางวิชาการ (Academic Integrity Notice)

> [!NOTE]  
> คลังนี้จัดทำขึ้นเพื่อเป็น **บันทึกการเรียนรู้ส่วนบุคคล (Personal Learning Archive)** และนำเสนอพัฒนาการทางวิชาการ (Academic Portfolio) เท่านั้น  
> ไม่อนุญาตให้นำโค้ดหรือการบ้านไปคัดลอก (Plagiarism) เพื่อส่งงานในรายวิชาโดยไม่ได้รับอนุญาตตามระเบียบของสถาบันฯ

---

## 👨‍💻 8. ผู้จัดทำ (Author)

**Phuriphat Hemakul (PhuriphatTyPeZ3r0)**
- 🎓 นักศึกษา สาขาวิศวกรรมคอมพิวเตอร์และปัญญาประดิษฐ์ (CPE & AI)
- 🏛️ สถาบันการจัดการปัญญาภิวัฒน์ (PIM)
- 🐙 GitHub: [@PhuriphatTyPeZ3r0](https://github.com/PhuriphatTyPeZ3r0)
- 🌐 Portfolio: [resume-phuriphat-hemakul.vercel.app](https://resume-phuriphat-hemakul.vercel.app)
