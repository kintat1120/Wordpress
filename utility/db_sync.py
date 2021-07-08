import os
from datetime import datetime
import mysql.connector
import argparse

### Note: we need to first
### brew install mysql-client


parser = argparse.ArgumentParser()
parser.add_argument(
    '--l2r',
    dest='l2r',
    action='store_const',
    const=True,
    default=False
)
parser.add_argument(
    '--r2l',
    dest='r2l',
    action='store_const',
    const=True,
    default=False
)
args = parser.parse_args()

is_r2l = 0

if args.r2l:
    is_r2l = True
elif args.l2r:
    is_r2l = False
else:
    print("No direction is specified, used --l2r or --r2l.")
    exit(1)

temp_folder = "tmp"

if not os.path.exists(temp_folder):
    os.mkdir(temp_folder)

LOCAL_DB_HOST = "127.0.0.1"
LOCAL_DB_USER = "root"
LOCAL_DB_DATABASE = "<local db name>"

REMOTE_DB_HOST = "dev.lecopt.tech"
REMOTE_DB_IP = "35.226.144.108"
REMOTE_DB_USER = "wp_user"
REMOTE_DB_PW = "N2jdJzMFYJe"
REMOTE_DB_DATABASE = "wp"
REMOTE_DB_PORT = 3306

local_backup_filepath = temp_folder + "/localbackup" + datetime.now().strftime("%Y%m%d_%H%M%S") + ".sql"
remote_backup_filepath = temp_folder + "/remotebackup" + datetime.now().strftime("%Y%m%d_%H%M%S") + ".sql"

cmd = f"mysqldump --column-statistics=0 -u {LOCAL_DB_USER} -h {LOCAL_DB_HOST} {LOCAL_DB_DATABASE} > {local_backup_filepath}"
print(cmd)
os.system(cmd)
print("done.")

cmd = f"mysqldump --set-gtid-purged=OFF --column-statistics=0 -u {REMOTE_DB_USER} -p'{REMOTE_DB_PW}' -h {REMOTE_DB_IP} {REMOTE_DB_DATABASE} > {remote_backup_filepath}"
print(cmd)
os.system(cmd)
print("done.")


# Insert
if is_r2l:
    cmd = f'mysql --protocol=tcp --host={LOCAL_DB_HOST} --user={LOCAL_DB_USER} --default-character-set=utf8 --comments --database={LOCAL_DB_DATABASE}  < "{remote_backup_filepath}"'
    print(cmd)
    os.system(cmd)
    print("done r2l.")
else:
    cmd = f'mysql --protocol=tcp --host={REMOTE_DB_IP} --user={REMOTE_DB_USER} -p{REMOTE_DB_PW} --port={REMOTE_DB_PORT} --default-character-set=utf8 --comments --database={REMOTE_DB_DATABASE}  < "{local_backup_filepath}"'
    print(cmd)
    os.system(cmd)
    print("done l2r.")

# Fix the endpoint local
cnx = mysql.connector.connect(
    user=LOCAL_DB_USER,
    password='',
    host=LOCAL_DB_HOST,
    database=LOCAL_DB_DATABASE,
)
cur = cnx.cursor()
cur.execute(f"UPDATE `{LOCAL_DB_DATABASE}`.`wp_options` SET `option_value` = 'http://localhost' WHERE (`option_name` = 'siteurl');")
cur.execute(f"UPDATE `{LOCAL_DB_DATABASE}`.`wp_options` SET `option_value` = 'http://localhost' WHERE (`option_name` = 'home');")
cnx.commit()
cnx.close()

# Fix the endpoint remote
cnx = mysql.connector.connect(
    user=REMOTE_DB_USER,
    password=REMOTE_DB_PW,
    host=REMOTE_DB_IP,
    database=REMOTE_DB_DATABASE,
    port=REMOTE_DB_PORT
)
cur = cnx.cursor()
cur.execute(f"UPDATE `{REMOTE_DB_DATABASE}`.`wp_options` SET `option_value` = 'https://{REMOTE_DB_HOST}' WHERE (`option_name` = 'siteurl');")
cur.execute(f"UPDATE `{REMOTE_DB_DATABASE}`.`wp_options` SET `option_value` = 'https://{REMOTE_DB_HOST}' WHERE (`option_name` = 'home');")
cnx.commit()
cnx.close()
