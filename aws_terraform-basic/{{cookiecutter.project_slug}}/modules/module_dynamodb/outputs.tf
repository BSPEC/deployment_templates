output "table_name" {
  value = aws_dynamodb_table.table.name
}

output "arn" {
  value = aws_dynamodb_table.table.arn
}

output "stream_arn" {
  value = aws_dynamodb_table.table.stream_arn
}

output "stream_label" {
  value = aws_dynamodb_table.table.stream_label
}
