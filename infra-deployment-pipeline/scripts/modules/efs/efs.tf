resource "aws_efs_file_system" "efs" {
  creation_token = merge(var.tags, { Name = "${var.tags["Name"]}-EFS" })["Name"]
  performance_mode = var.performance_mode
  throughput_mode = var.throughput_mode

  tags = merge(var.tags, { Name = "${var.tags["Name"]}-EFS" })
}

resource "aws_efs_mount_target" "efs_mount" {
  count           = length(var.subnet_id)
  file_system_id  = aws_efs_file_system.efs.id
  subnet_id       = var.subnet_id[count.index]
}