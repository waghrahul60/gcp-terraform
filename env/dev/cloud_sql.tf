module "mysql-db" {
    source = "../../modules/cloudsql"
    project_id = local.project_name
    instance_name = "mysql-db-instance"
    db_version = "MYSQL_8_0"
    labels = merge(local.default_labels,{"user":"admin", "region":"us-west1", "service":"svc"})
    region = "us-west1"
    tier = "db-f1-micro"
    disk_autoresize = true
    disk_size = 20
    database_flags = [{ name="pgaudit.log", value = "all,read"}]
    db_names = ["mydb"]
    backup_start_time = "12:00"
    zone = ""
    #maintenance_window = [{"day":6, "hour":16}]
    backup_location = "us-west1"
}