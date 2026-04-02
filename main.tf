# AWS Provider Tanımı
provider "aws" {
  region = "eu-west-2"
}

# DynamoDB Tablosu
resource "aws_dynamodb_table" "envanter_tablo" {
  name = "UrunEnvanter"
  billing_mode = "PROVISIONED"
  read_capacity = 5
  write_capacity = 5
  hash_key = "UrunID"
  range_key = "Kategori"
# Attribute Tanımları
attribute {
  name = "UrunID"
  type = "S"
}

attribute {
  name = "Kategori"
  type = "S"
}

tags = {
    name = "TerraformProject"
    Environment = "Dev"
}
}

# Tabloya İlk Veriyi Ekleme
resource "aws_dynamodb_table_item" "ilk_urun" {
  table_name = aws_dynamodb_table.envanter_tablo.name
  hash_key = aws_dynamodb_table.envanter_tablo.hash_key
  range_key = aws_dynamodb_table.envanter_tablo.range_key

item = <<ITEM
{
  "UrunID": {"S": "001"},
  "Kategori": {"S": "Laptop"},
  "UrunAdi": {"S": "LENOVA"},
  "StokAdedi": {"N": "10"}
}
ITEM
}
