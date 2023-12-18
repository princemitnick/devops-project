import subprocess
import datetime

db_host = "192.168.1.29"
db_user = "root"
db_password = "mysql"
db_port = "3307"
db_name = "id"

backup_directory = "/home/test/Documents/mysql_backup"
backup_filename = f"backup_{db_name}_{datetime.datetime.now().strftime('%Y%m%d%H%M%S')}.sql"

# CMD mysqldump

mysqldump_command = [
    "mysqldump",
    "-h", db_host,
    "--port", db_port,
    "-u", db_user,
    "-p" + db_password,
    "--ssl-mode=disabled",
    db_name
]

backup_path = f"{backup_directory}/{backup_filename}"

try:
    with open(backup_path, 'w') as backup_file:
        subprocess.run(mysqldump_command, stdout=backup_file, check=True)
        print(f"Sauvegarde reussie dans {backup_path}")
except subprocess.CalledProcessError as e:
    print(f"Erreur lors de la sauvegarde : {e}")
except Exception as e:
    print(f"Une erreur s'est produite : {e}")