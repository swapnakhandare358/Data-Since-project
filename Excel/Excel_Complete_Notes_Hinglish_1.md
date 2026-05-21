# 📊 Excel Complete Notes — Hinglish mein (With Real Examples)

> Ye notes tumhare 7 uploaded files se liye gaye examples ke saath hain.  
> Dataset: Bank Transactions (CustomerName, Branch, Country, TransactionType, Amount, etc.)

---

## 📁 File 01 — Excel Introduction (PDF)

### Excel kya hai?
Microsoft ka ek spreadsheet program hai jo columns aur rows mein data organize karta hai. Windows, Mac, Android, iOS — sab pe chalta hai.

### Excel kab use karte hain?
- **Data Entry & Storage** — max 1,048,576 rows × 16,384 columns
- **Calculations** — ~450 built-in functions hain
- **Data Analysis** — Pivot Table, Sort, Filter, Conditional Formatting
- **Charts & Dashboards** — Line, Bar, Pie charts, etc.
- **Accounting & Budgeting** — Financial statements, budget plans

### Excel Interface ke Parts:
| Part | Kya karta hai |
|------|--------------|
| **Title Bar** | File ka naam dikhata hai |
| **Ribbon** | 7 tabs: Home, Insert, Page Layout, Formulas, Data, Review, View |
| **Formula Bar** | Cell mein formula/data dikhata/likhata hai |
| **Name Box** | Selected cell ka address (jaise C4) |
| **Status Bar** | Cell ka state: Ready / Edit / Enter / Point mode |
| **Quick Access Toolbar** | Commonly used commands shortcut |

### Important Keyboard Shortcuts:
| Shortcut | Kaam |
|----------|------|
| `Ctrl+N` | New workbook |
| `Ctrl+S` | Save |
| `Ctrl+Z` | Undo |
| `Ctrl+C / V` | Copy / Paste |
| `Ctrl+F` | Find |
| `Ctrl+H` | Find & Replace |
| `F2` | Cell edit mode |
| `Ctrl+Home` | Cell A1 pe jao |
| `Ctrl+End` | Last used cell pe jao |
| `Alt+Enter` | Same cell mein new line |

---

## 📁 File 02 — Home Tab (Formatting + Basic Operations)

**Dataset:** Bank transactions — TXN0000001 to TXN0000023, Columns: TransactionID, Date, AccountID, CustomerName, Branch, Country, TransactionType, Category

### Home Tab ke important sections:

#### 1. Clipboard (Copy/Paste)
```
Ctrl+C → Copy
Ctrl+X → Cut
Ctrl+V → Paste
Alt+H+V+S → Paste Special (sirf values paste karna)
```

#### 2. Font Formatting
- **Bold (Ctrl+B):** CustomerName column ko bold banao
- **Italic (Ctrl+I):** Category column ko italic karo
- Font size badha sakte ho (e.g., 11 se 14)

#### 3. Number Formatting
Transaction Amount ke liye:
```
Currency format: $1,032.26
Percentage: 25%
Date format: 2022-08-01
```

#### 4. Alignment
- Left/Center/Right align
- **Wrap Text:** Agar text column se bada ho

#### 5. Conditional Formatting (⭐ Important!)
**Example:** Amount > 5000 wali rows ko red highlight karo
- `Home → Conditional Formatting → Highlight Cell Rules → Greater Than → 5000 → Red Fill`

#### 6. Sort & Filter (Home Tab se bhi available)
- Sort A→Z: TransactionType alphabetically sort karo
- Filter: Sirf "Withdrawal" transactions dikhao

#### 7. Format as Table
Data ko Table format mein convert karo:
- Auto filter lagta hai
- Rows alternate color mein dikhti hain
- Formulas automatically extend hote hain

---

## 📁 File 03 — Filter & Text Formulas

**Dataset:** Branch, Country, TransactionType, Currency, Amount, AmountUSD, Balance

### Text Formulas (Real Examples):

| Formula | Syntax | Example | Result |
|---------|--------|---------|--------|
| **LEFT** | `=LEFT(text, n)` | `=LEFT("Withdrawal",2)` | `Wi` |
| **RIGHT** | `=RIGHT(text, n)` | `=RIGHT("Fee Offer",3)` | `fer` |
| **MID** | `=MID(text, start, n)` | `=MID("Withdrawal",3,4)` | `hdra` |
| **UPPER** | `=UPPER(text)` | `=UPPER("withdrawal")` | `WITHDRAWAL` |
| **LOWER** | `=LOWER(text)` | `=LOWER("Payment")` | `payment` |
| **PROPER** | `=PROPER(text)` | `=PROPER("DePosit moneY")` | `Deposit Money` |
| **TRIM** | `=TRIM(text)` | `=TRIM("   Deposit   ")` | `Deposit` |
| **LEN** | `=LEN(text)` | `=LEN("Payment")` | `7` |
| **CONCATENATE / &** | `=A1&","&B1` | `="Aisha Singh"&","&"London"` | `Aisha Singh,London` |
| **TEXTJOIN** | `=TEXTJOIN("$",1,A1:C1)` | Join with `$` separator | `Transfer$Loan$Payment` |
| **REPLACE** | `=REPLACE(text,2,2,"PO")` | `=REPLACE("Deposit",3,2,"PO")` | `DePOsit` |
| **SUBSTITUTE** | `=SUBSTITUTE(text,old,new)` | `=SUBSTITUTE("Transfer","an","BB")` | `TrBBnsfer` |
| **FIND** | `=FIND("O","London")` | Position dhundho | `4` |
| **SEARCH** | `=SEARCH("dra","Withdrawal")` | Case-insensitive search | `5` |
| **EXACT** | `=EXACT(A1,B1)` | Case-sensitive match | `TRUE/FALSE` |
| **TEXTBEFORE** | `=TEXTBEFORE("Transfer-money","-")` | `Transfer` |
| **TEXTAFTER** | `=TEXTAFTER("Payment,method",",")` | `method` |
| **TEXTSPLIT** | `=TEXTSPLIT("Payment-method","-")` | `Payment` \| `method` |
| **CLEAN** | `=CLEAN(text)` | Non-printable characters remove karo |
| **REPEAT/REPT** | `=REPT("Transfer",3)` | `TransferTransferTransfer` |

### Date Formulas:

| Formula | Example | Result |
|---------|---------|--------|
| `=DAY(A1)` | `=DAY("2022-08-01")` | `1` |
| `=MONTH(A1)` | `=MONTH("2022-07-14")` | `7` |
| `=YEAR(A1)` | `=YEAR("2024-01-23")` | `2024` |
| `=TODAY()` | Current date | Auto update |
| `=NOW()` | Current date + time | Auto update |
| `=NETWORKDAYS(start,end)` | Working days count | `20` |
| `=HOUR(time)` | `=HOUR(0.52135)` | `12` |
| `=MINUTE(time)` | `=MINUTE(0.52135)` | `30` |
| `=SECOND(time)` | `=SECOND(0.52135)` | `45` |
| `=DATE(y,m,d)` | `=DATE(2024,7,25)` | Serial number |

### Filter (Normal Filter):
- Data → Filter laga do (ya `Ctrl+Shift+L`)
- Column header pe dropdown aata hai
- **Example:** Branch column mein sirf "London" select karo → London ki saari rows dikhegi

### Advanced Filter (File 03 Sheet3 Example):
Multiple branches filter karna — "Tokyo, London, New York, Singapore, Mumbai":
- Data → Advanced → List range aur Criteria range select karo
- Results wahi filter honge jo criteria mein match hon

---

## 📁 File 04 — Data Validation

**Dataset:** Bank transactions — Amount, AmountUSD, Country, TransactionType

### Data Validation kya hai?
Cell mein galat data enter na ho sake — iske liye restrictions lagate hain.

**Path:** `Data → Data Validation`

### Types of Validation:

#### 1. Text Validation
```
Allow: Text Length
Data: Between
Minimum: 3, Maximum: 20
→ "amit" ✅, "ab" ❌ (too short)
```

#### 2. Number Validation
```
Allow: Whole Number
Data: Between 1 and 100
→ 55 ✅, 67 ✅, 150 ❌
```

#### 3. Decimal Validation
```
Allow: Decimal
Data: Between 1 and 5
→ 4.7 ✅, 4.2 ✅, 6 ❌
```

#### 4. Date Validation
```
Allow: Date
Data: Greater than 01-Jan-2022
→ Future dates ✅, Past dates ❌
```

#### 5. List Validation (Dropdown!) ⭐
**Example:** TransactionType ke liye dropdown:
```
Allow: List
Source: Withdrawal, Deposit, Payment, Transfer, Fee, Loan
```
Cell mein click karo → dropdown aayega: A, B, C, F, E, A+, B+

#### 6. Custom Validation
```
Formula: =AND(A1>0, A1<100000)
→ Amount sirf 0 se 100000 ke beech allowed
```

### Input Message & Error Alert:
- **Input Message:** Cell select karte hi tip dikhao ("Enter amount in USD")
- **Error Alert:** Galat data enter karne pe popup: "Invalid Amount!"

---

## 📁 File 05 — Advanced Filter

**Dataset:** CustomerName, Branch, Country, TransactionType, Category, Currency, Amount, AmountUSD, TransactionDate

### Normal Filter vs Advanced Filter:

| Feature | Normal Filter | Advanced Filter |
|---------|--------------|-----------------|
| Multiple conditions | Limited | Unlimited |
| OR conditions | Mushkil | Aasaan |
| Result copy karna | Nahi | Haan, alag jagah copy ho sakta |
| Complex criteria | Nahi | Haan |

### Advanced Filter kaise use karo:

**Step 1:** Criteria range banao (alag cells mein):
```
| Country | Amount |
|---------|--------|
| UK      |        |
| USA     |        |
```

**Step 2:** `Data → Advanced Filter`
- List range: A1:H21 (main data)
- Criteria range: J1:K3 (conditions)
- Copy to: M1 (result yahan aayega)

**Real Example from File 05:**
- Sheet1 mein TransactionDate filter kiya gaya hai
- Sheet4 mein Amount × AmountUSD calculations ke saath data hai
- city-1, city-2, city-3 — alag criteria se alag sheets mein results

### LARGE & SMALL functions (Advanced Filter ke saath):
```excel
=LARGE(H2:H21, 1)   → Sabse bada amount
=SMALL(H2:H21, 1)   → Sabse chhota amount
```

---

## 📁 File 06 — Lookup Formulas

**Dataset:** TXN0000001 to TXN0000117+ — Full transaction data with all columns

### 1. VLOOKUP (Vertical Lookup) ⭐
**Syntax:** `=VLOOKUP(lookup_value, table_array, col_index, [range_lookup])`

**Example:** TXN0000001 ka CustomerName dhundho:
```excel
=VLOOKUP("TXN0000001", A2:M117, 5, 0)
→ Result: "Aisha Singh"
```
- `"TXN0000001"` → ye dhundna hai
- `A2:M117` → is range mein dhundho
- `5` → 5th column return karo (CustomerName)
- `0` → Exact match chahiye

**Common Error:** `#N/A` — value nahi mili

### 2. HLOOKUP (Horizontal Lookup)
**Syntax:** `=HLOOKUP(lookup_value, table_array, row_index, [range_lookup])`

Jab data columns mein nahi, rows mein ho tab use karo. (File 02 Sheet5 mein horizontal structure dekho)

### 3. INDEX + MATCH ⭐⭐ (VLOOKUP se better!)
**Syntax:** `=INDEX(return_range, MATCH(lookup_value, lookup_range, 0))`

**Example:** TXN0000005 ka Amount dhundho:
```excel
=INDEX(K2:K117, MATCH("TXN0000005", A2:A117, 0))
→ Result: 874.91
```

**VLOOKUP se better kyun?**
- Left column mein bhi dhundh sakta hai
- Column add/delete karne se break nahi karta
- Faster with large data

### 4. XLOOKUP (Newest! Excel 365+) ⭐⭐⭐
**Syntax:** `=XLOOKUP(lookup, lookup_array, return_array, [if_not_found])`

**Example:**
```excel
=XLOOKUP("TXN0000016", A2:A117, F2:F117, "Not Found")
→ Result: "London"
```
- "Not Found" → error ki jagah ye dikhao

### 5. MATCH (Position dhundho)
```excel
=MATCH("TXN0000003", A2:A117, 0)
→ Result: 3 (3rd row mein hai)
```

### 6. INDEX only (Value by position)
```excel
=INDEX(E2:E117, 7)
→ TXN0000007 ka CustomerName: "Joseph Wilson"
```

### 7. CHOOSE
```excel
=CHOOSE(2, "Withdrawal", "Deposit", "Payment")
→ "Deposit"
```

### Lookup Error Handling:
```excel
=IFERROR(VLOOKUP("XYZ", A2:M117, 5, 0), "Not Found")
→ Error aane pe "Not Found" dikhao
```

---

## 📁 File 07 — Load Data & Data Modeling (Math Formulas)

**Dataset:** CustomerName, Branch, Country, TransactionType, Amount, AmountUSD, Balance

### SUM Functions:

| Formula | Syntax | Example | Result |
|---------|--------|---------|--------|
| **SUM** | `=SUM(range)` | `=SUM(G2:G19)` | 15614.26 |
| **SUMIF** | `=SUMIF(range,criteria,sum_range)` | `=SUMIF(C2:C19,"UK",G2:G19)` | 330.53 (UK ka total amount) |
| **SUMIFS** | `=SUMIFS(sum_r,criteria_r1,c1,...)` | `=SUMIFS(G2:G19,C2:C19,"Canada",D2:D19,"Withdrawal")` | 1436.92 |
| **SUMPRODUCT** | `=SUMPRODUCT(A1:A10,B1:B10)` | Amount × Balance multiply karke total | 4145375095 |
| **SUMSQ** | `=SUMSQ(range)` | `=SUMSQ(G2:G19)` | 34168036.05 |

### COUNT Functions:

| Formula | Syntax | Example | Result |
|---------|--------|---------|--------|
| **COUNT** | `=COUNT(range)` | `=COUNT(G2:G19)` | 17 (numbers count) |
| **COUNTA** | `=COUNTA(range)` | `=COUNTA(G2:G19)` | 18 (non-empty cells) |
| **COUNTBLANK** | `=COUNTBLANK(range)` | `=COUNTBLANK(H2:H19)` | 4 (khali cells) |
| **COUNTIF** | `=COUNTIF(range,criteria)` | `=COUNTIF(D2:D19,"Payment")` | 4 |
| **COUNTIFS** | `=COUNTIFS(r1,c1,r2,c2)` | `=COUNTIFS(C2:C19,"Canada",D2:D19,"Fee")` | 3 |

### AVERAGE Functions:

| Formula | Example | Result |
|---------|---------|--------|
| `=AVERAGE(G2:G19)` | Amount ka average | 918.49 |
| `=AVERAGEA(G2:G19)` | Text/empty bhi count karo | 867.46 |
| `=AVERAGEIF(C2:C19,"Australia",H2:H19)` | Australia ka avg Balance | 42064.06 |
| `=AVERAGEIFS(...)` | Multiple conditions ke saath average | 235445.03 |

### Real File 07 Examples:

**SUMIF Example:**
```excel
=SUMIF(C2:C19, "UK", G2:G19)
→ UK ke saare amounts add: 330.53
```

**COUNTIF Example:**
```excel
=COUNTIF(D2:D19, "Transfer")
→ Transfer transactions count: 4
```

**AVERAGEIFS Example:**
```excel
=AVERAGEIFS(I2:I19, C2:C19, "Germany", D2:D19, "Transfer")
→ Germany ke Transfer transactions ka avg Balance: 235445.03
```

### Data Modeling — SUMPRODUCT:
```excel
=SUMPRODUCT(G2:G19, I2:I19)
→ Har row mein Amount × Balance multiply karo, phir sab add karo
→ Result: 4,145,375,095
```

**#VALUE! Error:** Priya Thomas ki row mein Amount = "abc" (text) tha, isliye error aaya.
- Fix: `=IFERROR(G15*I15, 0)`

---

## 🔑 Quick Reference — Kaunsa Formula Kab?

| Situation | Formula |
|-----------|---------|
| Ek ID se koi bhi column ka value nikalna | `XLOOKUP` ya `INDEX+MATCH` |
| Simple column dhundna | `VLOOKUP` |
| Ek condition pe total | `SUMIF` |
| Multiple conditions pe total | `SUMIFS` |
| Ek condition pe count | `COUNTIF` |
| Multiple conditions pe count | `COUNTIFS` |
| Text ke characters | `LEFT, RIGHT, MID, LEN` |
| Text join karna | `CONCATENATE`, `&`, `TEXTJOIN` |
| Galat data rokna | `Data Validation` |
| Complex filter, copy result | `Advanced Filter` |
| Error handle karna | `IFERROR(formula, "message")` |

---

## ⚠️ Common Errors aur Fix:

| Error | Matlab | Fix |
|-------|--------|-----|
| `#N/A` | Value nahi mili | `IFERROR` use karo |
| `#VALUE!` | Wrong data type (text instead of number) | Data check karo |
| `#REF!` | Cell reference delete ho gaya | Range theek karo |
| `#DIV/0!` | Zero se divide | `=IFERROR(A1/B1,0)` |
| `#NAME?` | Formula name galat likha | Spelling check karo |

---

*Notes prepared from: 01_Introduction PDF + 02_Home Tab + 03_Filter & Text + 04_Data Validation + 05_Advanced Filter + 06_Lookup Formulas + 07_Data Modeling*
