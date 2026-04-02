# DynamoDB-ile-Envanter-Takip-Tablosu-Terraform-
Bu proje, Infrastructure as Code (IaC) prensiplerini kullanarak AWS üzerinde tamamen Free-Tier (Ücretsiz Katman) uyumlu bir NoSQL veritabanı altyapısı oluşturur.

# Proje Özeti
Bu çalışma kapsamında, Terraform kullanılarak otomatik bir envanter yönetim tablosu ayağa kaldırılmıştır. Proje, bulut kaynaklarının manuel işlemler yerine kodla yönetilmesini (Terraform) ve maliyet optimizasyonunu hedeflemektedir.

# Kullanılan Teknolojiler
Terraform: Altyapı yönetimi ve otomasyon.

AWS DynamoDB: NoSQL veritabanı servisi.

HCL (HashiCorp Configuration Language): Terraform yapılandırma dili.

# Mimari Özellikler
Billing Mode: PROVISIONED (Ücretsiz katman sınırları içinde kalmak için sabit kapasite ayarlandı).

Kapasite: 5 Read / 5 Write kapasite birimi.

Veri Yapısı: * UrunID (Partition Key - String)

Kategori (Sort Key - String)

Örnek Veri: Proje uygulandığında tabloya otomatik olarak bir adet örnek ürün (Item) eklenmektedir.
