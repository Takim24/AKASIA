
select * from Kehadiran a
JOIN MUser u on a.NIM = u.NIM
where CAST(a.Tanggal as date) = '06/15/2023' or CAST(a.Tanggal as date) = '06/17/2023'


select m.*,temp.totalNIM as totalHadir from MUser m
JOIN (
select COUNT(NIM) totalNIM, NIM from Kehadiran
where CAST(Tanggal as date) = '06/15/2023' or CAST(Tanggal as date) = '06/17/2023' group by NIM
) temp on m.NIM = temp.NIM