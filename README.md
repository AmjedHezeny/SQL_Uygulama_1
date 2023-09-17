# SQL Temel Sorguları 🌐✨

* SELECT: 📊 Bir veya birden fazla sütunu belirtip, veritabanından veri çekmek için kullanılır. Örneğin: SELECT * FROM Customers; tüm müşteri kayıtlarını getirir.

* FROM: 🗄️ Hangi tablodan veri çekileceğini belirtir. Örneğin: SELECT * FROM Customers; müşteri bilgilerini "Customers" tablosundan alır.

* WHERE: 🎯 Belirli bir koşula uyan verileri seçmek için kullanılır. Örneğin: WHERE Country = 'Germany' Almanya'da bulunan müşterileri seçer.

* IN: 📋 Belirli değerlerin bir listesinde bulunup bulunmadığını kontrol etmek için kullanılır. Örneğin: WHERE Country IN ('Germany', 'France') Almanya veya Fransa'da bulunan müşterileri seçer.

* LIKE: 🔍 Belirli bir desene uyan verileri seçmek için kullanılır. Genellikle metin alanlarında kullanılır. Örneğin: WHERE CompanyName LIKE '%market%' 'market' kelimesini içeren firma adlarını seçer.

* ORDER BY: 📈 Verileri belirli bir sıraya göre sıralamak için kullanılır. Örneğin: ORDER BY LastName ASC soyadlarına göre artan sırayla sıralar.

* ASC / DESC: 🔼🔽 ORDER BY ile birlikte kullanılır ve sıralamanın artan (ASC) veya azalan (DESC) olmasını belirtir.

* IS NULL / IS NOT NULL: 📭 Bir alanın boş (NULL) olup olmadığını kontrol etmek için kullanılır. Örneğin: WHERE Fax IS NULL faks numarası olmayan müşterileri seçer.



