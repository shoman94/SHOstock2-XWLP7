.class public Lcom/android/email/cba/CertificateMgr;
.super Ljava/lang/Object;
.source "CertificateMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyStore:Ljava/security/KeyStore;

.field private mPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/email/cba/CertificateMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/cba/CertificateMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "password"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v2, 0x0

    .line 145
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_0
    iput-object p2, p0, Lcom/android/email/cba/CertificateMgr;->mContext:Landroid/content/Context;

    .line 146
    const-string v5, "PKCS12"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    .line 147
    iput-object p1, p0, Lcom/android/email/cba/CertificateMgr;->mPassword:Ljava/lang/String;

    .line 151
    const-string v5, "keystore"

    invoke-virtual {p2, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 152
    iget-object v5, p0, Lcom/android/email/cba/CertificateMgr;->mContext:Landroid/content/Context;

    const-string v6, "keystore"

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 161
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v6, p0, Lcom/android/email/cba/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    if-eqz v2, :cond_1

    .line 169
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 176
    :cond_1
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 177
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 178
    sget-object v5, Lcom/android/email/cba/CertificateMgr;->TAG:Ljava/lang/String;

    const-string v6, "Empty Keystore!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 181
    sget-object v6, Lcom/android/email/cba/CertificateMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alias: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 183
    .end local v1           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 185
    :cond_3
    return-void

    .line 154
    :cond_4
    :try_start_3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "READ"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 156
    .local v4, parcel:Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    .line 157
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v2           #is:Ljava/io/FileInputStream;
    .local v3, is:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 163
    .end local v4           #parcel:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v5, Lcom/android/email/cba/CertificateMgr;->TAG:Ljava/lang/String;

    const-string v6, " error while loading certificate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v5, Lcom/android/emailcommon/cba/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 168
    if-eqz v2, :cond_5

    .line 169
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 172
    :cond_5
    :goto_3
    throw v5

    .line 171
    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_3
.end method

.method private saveKeystore()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v1, 0x0

    .line 348
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/email/cba/CertificateMgr;->mContext:Landroid/content/Context;

    const-string v3, "keystore"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v3, p0, Lcom/android/email/cba/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 354
    if-eqz v1, :cond_0

    .line 355
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 350
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 351
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/android/emailcommon/cba/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 354
    if-eqz v1, :cond_1

    .line 355
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 359
    :cond_1
    :goto_1
    throw v2

    .line 357
    :catch_2
    move-exception v0

    .line 358
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getAliases()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 400
    :goto_0
    return-object v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/android/emailcommon/cba/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 4
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 412
    .local v0, cert:Ljava/security/cert/X509Certificate;
    :try_start_0
    iget-object v2, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    return-object v0

    .line 413
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v1

    .line 414
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/emailcommon/cba/CertificateManagerException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 4
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, key:Ljava/security/Key;
    :try_start_0
    iget-object v2, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v3, p0, Lcom/android/email/cba/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    .line 328
    instance-of v2, v1, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    .line 329
    const/4 v1, 0x0

    .line 335
    :cond_0
    return-object v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/emailcommon/cba/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSubject(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/email/cba/CertificateMgr;->getCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public importCertificate(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "file"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, alias:Ljava/lang/String;
    const/4 v8, 0x0

    .line 69
    .local v8, privateKeyFound:Z
    const/4 v5, 0x0

    .line 71
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 72
    .end local v5           #is:Ljava/io/FileInputStream;
    .local v6, is:Ljava/io/FileInputStream;
    :try_start_1
    const-string v10, "PKCS12"

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    .line 73
    .local v9, tmpKeyStore:Ljava/security/KeyStore;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 74
    invoke-virtual {v9}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .line 75
    .local v2, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v8, :cond_2

    .line 76
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 77
    invoke-virtual {v9, v1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 78
    .local v3, chain:[Ljava/security/cert/Certificate;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v7

    .line 79
    .local v7, key:Ljava/security/Key;
    instance-of v10, v7, Ljava/security/PrivateKey;

    if-eqz v10, :cond_0

    .line 82
    const/4 v8, 0x1

    .line 83
    iget-object v10, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v11, p0, Lcom/android/email/cba/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-virtual {v10, v1, v7, v11, v3}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 90
    .end local v2           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3           #chain:[Ljava/security/cert/Certificate;
    .end local v7           #key:Ljava/security/Key;
    .end local v9           #tmpKeyStore:Ljava/security/KeyStore;
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 91
    .end local v6           #is:Ljava/io/FileInputStream;
    .local v4, e:Ljava/lang/Exception;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    new-instance v10, Lcom/android/emailcommon/cba/CertificateManagerException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v5, :cond_1

    .line 97
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 100
    :cond_1
    :goto_3
    throw v10

    .line 85
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v2       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v9       #tmpKeyStore:Ljava/security/KeyStore;
    :cond_2
    if-eqz v8, :cond_4

    .line 86
    :try_start_4
    invoke-direct {p0}, Lcom/android/email/cba/CertificateMgr;->saveKeystore()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 95
    if-eqz v6, :cond_3

    .line 97
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 104
    :cond_3
    :goto_4
    return-object v1

    .line 88
    :cond_4
    :try_start_6
    new-instance v10, Lcom/android/emailcommon/cba/CertificateManagerException;

    const-string v11, "Private Key not found"

    invoke-direct {v10, v11}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 95
    .end local v2           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9           #tmpKeyStore:Ljava/security/KeyStore;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 98
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v2       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v9       #tmpKeyStore:Ljava/security/KeyStore;
    :catch_1
    move-exception v4

    .line 99
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 98
    .end local v2           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/FileInputStream;
    .end local v9           #tmpKeyStore:Ljava/security/KeyStore;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .line 99
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 90
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public refresh()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v2, 0x0

    .line 193
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/email/cba/CertificateMgr;->mContext:Landroid/content/Context;

    const-string v6, "keystore"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 194
    iget-object v5, p0, Lcom/android/email/cba/CertificateMgr;->mContext:Landroid/content/Context;

    const-string v6, "keystore"

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 203
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v6, p0, Lcom/android/email/cba/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    if-eqz v2, :cond_1

    .line 211
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 218
    :cond_1
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 219
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 220
    sget-object v5, Lcom/android/email/cba/CertificateMgr;->TAG:Ljava/lang/String;

    const-string v6, "Empty Keystore!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 223
    sget-object v6, Lcom/android/email/cba/CertificateMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alias: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 225
    .end local v1           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 227
    :cond_3
    return-void

    .line 196
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/android/email/cba/CertificateMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "READ"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 198
    .local v4, parcel:Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    .line 199
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v2           #is:Ljava/io/FileInputStream;
    .local v3, is:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 205
    .end local v4           #parcel:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v5, Lcom/android/email/cba/CertificateMgr;->TAG:Ljava/lang/String;

    const-string v6, " error while loading certificate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v5, Lcom/android/emailcommon/cba/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 210
    if-eqz v2, :cond_5

    .line 211
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 214
    :cond_5
    :goto_3
    throw v5

    .line 213
    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_3
.end method

.method public removeCertificate(Ljava/lang/String;)Z
    .locals 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcom/android/email/cba/CertificateMgr;->saveKeystore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/android/emailcommon/cba/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public renameCertificate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "newName"
    .parameter "oldName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/cba/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 439
    :try_start_0
    iget-object v3, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lcom/android/email/cba/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    .line 440
    .local v2, key:Ljava/security/Key;
    iget-object v3, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, p2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 441
    .local v0, chain:[Ljava/security/cert/Certificate;
    iget-object v3, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lcom/android/email/cba/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4, v0}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 442
    iget-object v3, p0, Lcom/android/email/cba/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, p2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 443
    invoke-direct {p0}, Lcom/android/email/cba/CertificateMgr;->saveKeystore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v0           #chain:[Ljava/security/cert/Certificate;
    .end local v2           #key:Ljava/security/Key;
    :cond_0
    return-void

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/android/emailcommon/cba/CertificateManagerException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/emailcommon/cba/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
