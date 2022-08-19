SELECT e.sname, p.regency, e.d1, e.d2, e.d3, e.d4, e.d5, e.d6, e.d7, e.d8, e.d9, e.d10, e.d11, e.d12, e.d13, e.d14, e.d15, e.d16, e.d17, e.d18, e.d19, e.d20, e.d21, e.d22, e.d23, e.d24, e.d25, e.d26, e.d27, e.d28, e.d29, e.d30, e.d31 FROM (SELECT s.sname, t.*, s.id_regency FROM Staff s, Timesheet t
WHERE s.[sid]=t.[sid]) e
INNER JOIN Position p ON e.id_regency = p.id_regency
