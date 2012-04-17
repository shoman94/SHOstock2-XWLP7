.class public Lcom/android/email/service/BackupAndRestoreService;
.super Landroid/content/BroadcastReceiver;
.source "BackupAndRestoreService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "target_File"
    .parameter "result_File"

    .prologue
    .line 40
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v8, targetFile:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v7, resultFile:Ljava/io/File;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v9, tmpFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 46
    const-string v10, "Email.BackupAndRestoreService >>"

    const-string v11, "targetFile targetfile exist!!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 49
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 51
    :cond_0
    const/4 v4, 0x0

    .line 52
    .local v4, nRead:I
    const/4 v2, 0x0

    .line 53
    .local v2, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 54
    .local v5, out:Ljava/io/OutputStream;
    const/16 v10, 0x2000

    new-array v0, v10, [B

    .line 56
    .local v0, buffer:[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 57
    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 59
    .end local v5           #out:Ljava/io/OutputStream;
    .local v6, out:Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_3

    .line 60
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 65
    .end local v3           #in:Ljava/io/InputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 66
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 75
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 80
    .end local v1           #e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 81
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 83
    :cond_2
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 84
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/File;->setWritable(ZZ)Z

    .line 85
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 88
    .end local v0           #buffer:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #nRead:I
    .end local v5           #out:Ljava/io/OutputStream;
    :goto_4
    return-void

    .line 62
    .restart local v0       #buffer:[B
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #nRead:I
    .restart local v6       #out:Ljava/io/OutputStream;
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 63
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 70
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 75
    :goto_5
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 78
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 71
    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 72
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 76
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 77
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 79
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 71
    :catch_3
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 76
    :catch_4
    move-exception v1

    .line 77
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 69
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 70
    :goto_6
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 75
    :goto_7
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 78
    :goto_8
    throw v10

    .line 71
    :catch_5
    move-exception v1

    .line 72
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 76
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 77
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 87
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #nRead:I
    .end local v5           #out:Ljava/io/OutputStream;
    :cond_4
    const-string v10, "Email.BackupAndRestoreService >>"

    const-string v11, "Targetfile is not exist!!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 69
    .restart local v0       #buffer:[B
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #nRead:I
    .restart local v5       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_6

    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_6

    .line 64
    :catch_7
    move-exception v1

    goto :goto_1

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private onFinish(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "mContext"
    .parameter "finish"

    .prologue
    .line 116
    const-string v1, "com.android.email.service.BACKUP_FINISH"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.service.BACKUP_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    const-string v1, "Email.BackupAndRestoreService >>"

    const-string v2, "BACKUP_FINISH!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v1, "com.android.email.service.RESTORE_FINISH"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.service.RESTORE_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    const-string v1, "Email.BackupAndRestoreService >>"

    const-string v2, "RESTORE_FINISH!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    const-string v1, "Email.BackupAndRestoreService >>"

    const-string v2, "BACKUP_RESTORE_FAILED!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 92
    const-string v5, "backup_Or_Restore"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 94
    .local v1, backupOrRestore:Z
    const-string v5, "backup_Path"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, intentPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AndroidMail.Main.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, targetfile:Ljava/lang/String;
    const-string v3, "./data/data/com.android.email/shared_prefs/AndroidMail.Main.xml"

    .line 100
    .local v3, restoreHere:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/email/service/BackupAndRestoreService;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v5, "com.android.email.service.RESTORE_FINISH"

    invoke-direct {p0, p1, v5}, Lcom/android/email/service/BackupAndRestoreService;->onFinish(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    const-string v5, "AndroidMail.Main"

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 113
    .end local v3           #restoreHere:Ljava/lang/String;
    :goto_0
    return-void

    .line 105
    .end local v4           #targetfile:Ljava/lang/String;
    :cond_0
    const-string v4, "./data/data/com.android.email/shared_prefs/AndroidMail.Main.xml"

    .line 106
    .restart local v4       #targetfile:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AndroidMail.Main.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, backupHere:Ljava/lang/String;
    const-string v5, "Email.BackupAndRestoreService >>"

    const-string v6, "Backup!!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {v4, v0}, Lcom/android/email/service/BackupAndRestoreService;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v5, "com.android.email.service.BACKUP_FINISH"

    invoke-direct {p0, p1, v5}, Lcom/android/email/service/BackupAndRestoreService;->onFinish(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
