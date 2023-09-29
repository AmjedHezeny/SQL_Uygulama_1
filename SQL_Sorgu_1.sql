
-- Employees tablosu içerisindeki FirstName, LastName, Title kolonlarını listeleyelim
SELECT
    FirstName AS 'Çalışan Adı',
    LastName AS 'Çalışan Soyadı',
    Title AS 'Çalışan Ünvanı'
FROM Employees;

-- Shippers tablosu içerisindeki tüm kolonları listeleyelim
SELECT * FROM Shippers;  -- Tüm Shipper Bilgileri

-- Ülkesi Mexico veya Germany olan müşterileri listeleyelim
-- (Customers)(Country)
SELECT
    ContactName AS 'İletişim Adı',
    ContactTitle AS 'İletişim Ünvanı',
    Country AS 'Ülke'
FROM Customers
WHERE Country IN ('Mexico', 'Germany');

-- London şehrinde yaşayan çalışanları listeleyelim
-- (Employees)(City)
SELECT
    FirstName AS 'Çalışan Adı',
    LastName AS 'Çalışan Soyadı',
    BirthDate AS 'Doğum Tarihi',
    City AS 'Şehir'
FROM Employees
WHERE City = 'London';

-- Ürün fiyatı 100$ ve üzeri olan ürünleri listeleyelim
-- (Products)(UnitPrice)
SELECT
    ProductName AS 'Ürün Adı',
    UnitPrice AS 'Ürün Fiyatı'
FROM Products
WHERE UnitPrice >= 100;

-- Fax bilgisi boş olan müşterileri listeleyelim
-- (Customers)
SELECT 
    CompanyName AS 'Firma Adı',
    ContactTitle AS 'İletişim Ünvanı',
    Country AS 'Ülke',
    Fax AS 'Faks Numarası'
FROM Customers
WHERE Fax IS NULL;

-- Fax bilgisi boş olmayan müşterileri listeleyelim
SELECT 
    CompanyName AS 'Firma Adı',
    ContactTitle AS 'İletişim Ünvanı',
    Country AS 'Ülke',
    Fax AS 'Faks Numarası'
FROM Customers
WHERE Fax IS NOT NULL;

-- Ürünleri fiyat bilgisine göre küçükten büyüğe doğru listeleyelim
-- (Products)(UnitPrice)
SELECT
    UnitPrice AS 'Ürün Fiyatı',
    ProductName AS 'Ürün Adı'
FROM Products
ORDER BY UnitPrice ASC;

-- Çalışanları ünvan kısaltması ve ad bilgisine göre küçükten büyüğe doğru sıralayalım
-- (Employees)(TitleOfCourtesy , FirstName)
SELECT
    TitleOfCourtesy AS 'Kısa Ünvan',
    FirstName AS 'Çalışan Adı',
    LastName AS 'Çalışan Soyadı'
FROM Employees
ORDER BY TitleOfCourtesy ASC, FirstName ASC;

-- Müşterileri ülkeye göre küçükten büyüğe firma adına göre büyükten küçüğe doğru sıralayalım
-- (Customers)(Country , CompanyName)
SELECT
    Country AS 'Ülke',
    CompanyName AS 'Firma Adı',
    ContactName AS 'İletişim Adı'
FROM Customers
ORDER BY Country ASC, CompanyName DESC;

-- Ülkesi Germany olan müşterileri contactname ine göre sıralayalım
-- (Customers)(Country)
SELECT 
    Country AS 'Ülke',
    ContactName AS 'İletişim Adı'
FROM Customers
WHERE Country = 'Germany'
ORDER BY ContactName ASC;

-- Firma adında market kelimesi geçen müşterileri listeleyelim
-- (Customers) (CompanyName)
SELECT
    CompanyName AS 'Firma Adı',
    ContactName AS 'İletişim Adı'
FROM Customers
WHERE CompanyName LIKE '%market%';

-- Ürün adı C ile başlayan ürünleri alfabetik sıra ile listeleyelim
-- (Products) (ProductName)
SELECT
    ProductName AS 'Ürün Adı'
FROM Products
WHERE ProductName LIKE 'C%'
ORDER BY ProductName ASC;

-- Yönetici (manager) ünvanına sahip çalışanları listeleyelim
-- (Employees) (Title)
SELECT
    Title AS 'Ünvan',
    FirstName AS 'Çalışan Adı'
FROM Employees
WHERE Title LIKE '%Manager';

-- Ünvanı Owner ve Sales Agent olan müşterileri listeleyelim
-- (Customers)(ContactTitle)
SELECT
    CompanyName AS 'Firma Adı',
    ContactName AS 'İletişim Adı',
    ContactTitle AS 'İletişim Ünvanı'
FROM Customers
WHERE ContactTitle IN ('Owner', 'Sales Agent');

-- Ülkesi UK, USA ve Brazil olmayan müşterileri listeleyelim
-- (Customers)(Country)
SELECT
    CompanyName AS 'Firma Adı',
    Country AS 'Ülke'
FROM Customers
WHERE Country NOT IN ('UK', 'USA', 'Brazil')
ORDER BY Country ASC;



---------------------------------------
CREATE FUNCTION Emcet (@Yas FLOAT) 
RETURNS FLOAT
AS
BEGIN
    DECLARE @Yıl FLOAT;
    SET @Yıl = @Yas * 26;
    RETURN @Yıl;
END;
