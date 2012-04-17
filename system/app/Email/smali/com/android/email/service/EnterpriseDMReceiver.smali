.class public Lcom/android/email/service/EnterpriseDMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseDMReceiver.java"


# static fields
.field public static ACCOUNT_DELETED:Ljava/lang/String;

.field public static ENABLE_MESSAGECOMPOSE:Ljava/lang/String;

.field public static GET_DEVICEID:Ljava/lang/String;

.field public static INSTALL_CERTIFICATE:Ljava/lang/String;

.field public static RENAME_CERTIFICATE:Ljava/lang/String;

.field public static SIGNATURE_UPDATE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "EnterpriseDMReceiver"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, "com.android.email.SIGNATURE_UPDATED"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->SIGNATURE_UPDATE:Ljava/lang/String;

    .line 38
    const-string v0, "com.android.email.INSTALL_CERTIFICATE"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->INSTALL_CERTIFICATE:Ljava/lang/String;

    .line 39
    const-string v0, "com.android.email.ACCOUNT_DELETED"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->ACCOUNT_DELETED:Ljava/lang/String;

    .line 40
    const-string v0, "com.android.email.RENAME_CERTIFICATE"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->RENAME_CERTIFICATE:Ljava/lang/String;

    .line 41
    const-string v0, "com.android.email.ENABLE_MESSAGECOMPOSE"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->ENABLE_MESSAGECOMPOSE:Ljava/lang/String;

    .line 42
    const-string v0, "com.android.email.GET_DEVICEID"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->GET_DEVICEID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/EnterpriseDMReceiver;Landroid/content/Context;[BJLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/android/email/service/EnterpriseDMReceiver;->installCertificate(Landroid/content/Context;[BJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private installCertificate(Landroid/content/Context;[BJLjava/lang/String;)V
    .locals 14
    .parameter "cxt"
    .parameter "data"
    .parameter "accid"
    .parameter "password"

    .prologue
    .line 177
    const/4 v7, 0x0

    .line 178
    .local v7, fout:Ljava/io/FileOutputStream;
    const/4 v10, 0x1

    .line 180
    .local v10, status:I
    :try_start_0
    const-string v11, "temp.p12"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 181
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 182
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 187
    new-instance v4, Lcom/android/email/cba/CertificateMgr;

    invoke-static {p1}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11, p1}, Lcom/android/email/cba/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 188
    .local v4, cm:Lcom/android/email/cba/CertificateMgr;
    const-string v11, "temp.p12"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v4, v11, v0}, Lcom/android/email/cba/CertificateMgr;->importCertificate(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, alias:Ljava/lang/String;
    move-wide/from16 v0, p3

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 190
    .local v2, acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-object v11, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Alias - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {v4, v3}, Lcom/android/email/cba/CertificateMgr;->getSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 195
    invoke-virtual {v4, v3}, Lcom/android/email/cba/CertificateMgr;->removeCertificate(Ljava/lang/String;)Z

    move-result v8

    .line 196
    .local v8, ret:Z
    sget-object v11, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing Cert doesn\'t match email address - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v8           #ret:Z
    :cond_0
    :goto_0
    const-string v11, "temp.p12"

    invoke-virtual {p1, v11}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    if-eqz v7, :cond_1

    .line 217
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    .end local v2           #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v3           #alias:Ljava/lang/String;
    .end local v4           #cm:Lcom/android/email/cba/CertificateMgr;
    :cond_1
    :goto_1
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.sec.CBA_INSTALL_STATUS"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v9, send:Landroid/content/Intent;
    const-string v11, "status"

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    return-void

    .line 199
    .end local v9           #send:Landroid/content/Intent;
    .restart local v2       #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v3       #alias:Ljava/lang/String;
    .restart local v4       #cm:Lcom/android/email/cba/CertificateMgr;
    :cond_2
    :try_start_2
    iget-object v11, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 200
    iget-object v11, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/android/email/cba/CertificateMgr;->removeCertificate(Ljava/lang/String;)Z

    move-result v8

    .line 201
    .restart local v8       #ret:Z
    sget-object v11, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Remove "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Status - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v8           #ret:Z
    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v5, cv:Landroid/content/ContentValues;
    const-string v11, "cbaCertificateAlias"

    invoke-virtual {v5, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2, p1, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 206
    const/4 v10, 0x0

    goto :goto_0

    .line 218
    .end local v5           #cv:Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    .line 219
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v2           #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v3           #alias:Ljava/lang/String;
    .end local v4           #cm:Lcom/android/email/cba/CertificateMgr;
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 213
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    if-eqz v7, :cond_1

    .line 217
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 218
    :catch_2
    move-exception v6

    .line 219
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 215
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-eqz v7, :cond_4

    .line 217
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 220
    :cond_4
    :goto_2
    throw v11

    .line 218
    :catch_3
    move-exception v6

    .line 219
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/email/service/EnterpriseDMReceiver;->SIGNATURE_UPDATE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 59
    sget-object v8, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    const-string v9, "onReceive Signature Update"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v8, "signature"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, signature:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 166
    .end local v6           #signature:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/email/service/EnterpriseDMReceiver;->INSTALL_CERTIFICATE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 66
    sget-object v8, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    const-string v9, "onReceive Install Certificate"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/email/service/EnterpriseDMReceiver$1;

    invoke-direct {v9, p0, p2, p1}, Lcom/android/email/service/EnterpriseDMReceiver$1;-><init>(Lcom/android/email/service/EnterpriseDMReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/email/service/EnterpriseDMReceiver;->ACCOUNT_DELETED:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 83
    sget-object v8, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    const-string v9, "onReceive ACCOUNT_DELETED"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v8, "alias"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, alias:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 92
    :try_start_0
    new-instance v1, Lcom/android/email/cba/CertificateMgr;

    const-string v8, "KEYSTORE_PASSWORD"

    invoke-direct {v1, v8, p1}, Lcom/android/email/cba/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 94
    .local v1, cm:Lcom/android/email/cba/CertificateMgr;
    invoke-virtual {v1, v0}, Lcom/android/email/cba/CertificateMgr;->removeCertificate(Ljava/lang/String;)Z

    move-result v4

    .line 95
    .local v4, ret:Z
    sget-object v8, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Remove Certificate Status - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v1           #cm:Lcom/android/email/cba/CertificateMgr;
    .end local v4           #ret:Z
    :cond_3
    invoke-static {p1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 101
    invoke-static {p1}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v7

    .line 102
    .local v7, sp:Lcom/android/email/SecurityPolicy;
    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {v7}, Lcom/android/email/SecurityPolicy;->reducePolicies()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v7           #sp:Lcom/android/email/SecurityPolicy;
    :catch_0
    move-exception v3

    .line 107
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0           #alias:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/email/service/EnterpriseDMReceiver;->RENAME_CERTIFICATE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 110
    sget-object v8, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    const-string v9, "onReceive Rename Certificate"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/email/service/EnterpriseDMReceiver$2;

    invoke-direct {v9, p0, p2, p1}, Lcom/android/email/service/EnterpriseDMReceiver$2;-><init>(Lcom/android/email/service/EnterpriseDMReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 125
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/email/service/EnterpriseDMReceiver;->ENABLE_MESSAGECOMPOSE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 126
    sget-object v8, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    const-string v9, "onReceive MessageCompose Enable"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {p1}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    goto/16 :goto_0

    .line 128
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/email/service/EnterpriseDMReceiver;->GET_DEVICEID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 129
    sget-object v8, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    const-string v9, "onReceive Get Device Id"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v2, 0x0

    .line 152
    .local v2, deviceid:Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 155
    sget-object v8, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device Id - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.enterprise.GET_DEVICEID"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v5, send:Landroid/content/Intent;
    if-eqz v2, :cond_7

    .line 159
    const-string v8, "deviceid"

    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :cond_7
    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 162
    .end local v5           #send:Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 163
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
