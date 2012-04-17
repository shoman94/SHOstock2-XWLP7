.class public Lcom/android/emailcommon/smime/CertificateMgr;
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
    .line 43
    const-class v0, Lcom/android/emailcommon/smime/CertificateMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/CertificateMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "password"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_0
    iput-object p2, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mContext:Landroid/content/Context;

    .line 132
    const-string v5, "PKCS12"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    iput-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    .line 133
    iput-object p1, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mPassword:Ljava/lang/String;

    .line 138
    const-string v5, "keystore"

    invoke-virtual {p2, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 139
    iget-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mContext:Landroid/content/Context;

    const-string v6, "keystore"

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 148
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v6, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    if-eqz v2, :cond_1

    .line 159
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 166
    :cond_1
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 167
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 168
    sget-object v5, Lcom/android/emailcommon/smime/CertificateMgr;->TAG:Ljava/lang/String;

    const-string v6, "Empty Keystore!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    sget-object v6, Lcom/android/emailcommon/smime/CertificateMgr;->TAG:Ljava/lang/String;

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

    .line 173
    .end local v1           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 175
    :cond_3
    return-void

    .line 141
    :cond_4
    :try_start_3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "READ"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 143
    .local v4, parcel:Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    .line 144
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

    .line 153
    .end local v4           #parcel:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v5, Lcom/android/emailcommon/smime/CertificateMgr;->TAG:Ljava/lang/String;

    const-string v6, " error while loading certificate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v5, Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 158
    if-eqz v2, :cond_5

    .line 159
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 162
    :cond_5
    :goto_3
    throw v5

    .line 161
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
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v1, 0x0

    .line 374
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mContext:Landroid/content/Context;

    const-string v3, "keystore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v3, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    if-eqz v1, :cond_0

    .line 381
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 380
    if-eqz v1, :cond_1

    .line 381
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 384
    :cond_1
    :goto_1
    throw v2

    .line 383
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v3

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
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 426
    :goto_0
    return-object v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 426
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
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, cert:Ljava/security/cert/X509Certificate;
    :try_start_0
    iget-object v2, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    return-object v0

    .line 439
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v1

    .line 440
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 4
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 352
    .local v1, key:Ljava/security/Key;
    :try_start_0
    iget-object v2, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v3, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    .line 354
    instance-of v2, v1, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    .line 355
    const/4 v1, 0x0

    .line 361
    :cond_0
    return-object v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSubject(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/smime/CertificateMgr;->getCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

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
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, alias:Ljava/lang/String;
    const/4 v8, 0x0

    .line 80
    .local v8, privateKeyFound:Z
    const/4 v5, 0x0

    .line 82
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 83
    .end local v5           #is:Ljava/io/FileInputStream;
    .local v6, is:Ljava/io/FileInputStream;
    :try_start_1
    const-string v10, "PKCS12"

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    .line 84
    .local v9, tmpKeyStore:Ljava/security/KeyStore;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 85
    invoke-virtual {v9}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .line 87
    .local v2, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v8, :cond_2

    .line 88
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 89
    invoke-virtual {v9, v1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 90
    .local v3, chain:[Ljava/security/cert/Certificate;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v7

    .line 91
    .local v7, key:Ljava/security/Key;
    instance-of v10, v7, Ljava/security/PrivateKey;

    if-eqz v10, :cond_0

    .line 95
    invoke-static {v3}, Lcom/android/emailcommon/smime/CertificateUtil;->checkCertValidity([Ljava/security/cert/Certificate;)V

    .line 96
    const/4 v8, 0x1

    .line 97
    iget-object v10, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v11, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-virtual {v10, v1, v7, v11, v3}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 105
    .end local v2           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3           #chain:[Ljava/security/cert/Certificate;
    .end local v7           #key:Ljava/security/Key;
    .end local v9           #tmpKeyStore:Ljava/security/KeyStore;
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 106
    .end local v6           #is:Ljava/io/FileInputStream;
    .local v4, e:Ljava/lang/Exception;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    new-instance v10, Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 109
    :goto_2
    if-eqz v5, :cond_1

    .line 110
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 114
    :cond_1
    :goto_3
    throw v10

    .line 99
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v2       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v9       #tmpKeyStore:Ljava/security/KeyStore;
    :cond_2
    if-eqz v8, :cond_4

    .line 100
    :try_start_4
    invoke-direct {p0}, Lcom/android/emailcommon/smime/CertificateMgr;->saveKeystore()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 109
    if-eqz v6, :cond_3

    .line 110
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 116
    :cond_3
    :goto_4
    return-object v1

    .line 102
    :cond_4
    :try_start_6
    new-instance v10, Lcom/android/emailcommon/smime/CertificateManagerException;

    const-string v11, "Private Key not found"

    invoke-direct {v10, v11}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 108
    .end local v2           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9           #tmpKeyStore:Ljava/security/KeyStore;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 112
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v2       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v9       #tmpKeyStore:Ljava/security/KeyStore;
    :catch_1
    move-exception v10

    goto :goto_4

    .end local v2           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6           #is:Ljava/io/FileInputStream;
    .end local v9           #tmpKeyStore:Ljava/security/KeyStore;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_2
    move-exception v11

    goto :goto_3

    .line 105
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public refresh()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 183
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mContext:Landroid/content/Context;

    const-string v6, "keystore"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 184
    iget-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mContext:Landroid/content/Context;

    const-string v6, "keystore"

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 193
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v6, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    if-eqz v2, :cond_1

    .line 201
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 208
    :cond_1
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 209
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 210
    sget-object v5, Lcom/android/emailcommon/smime/CertificateMgr;->TAG:Ljava/lang/String;

    const-string v6, "Empty Keystore!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 213
    sget-object v6, Lcom/android/emailcommon/smime/CertificateMgr;->TAG:Ljava/lang/String;

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

    .line 215
    .end local v1           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 217
    :cond_3
    return-void

    .line 186
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "READ"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 188
    .local v4, parcel:Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    .line 189
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

    .line 195
    .end local v4           #parcel:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v5, Lcom/android/emailcommon/smime/CertificateMgr;->TAG:Ljava/lang/String;

    const-string v6, " error while loading certificate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v5, Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 200
    if-eqz v2, :cond_5

    .line 201
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 204
    :cond_5
    :goto_3
    throw v5

    .line 203
    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_3
.end method

.method public removeCertificate(Ljava/lang/String;)Z
    .locals 11
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 297
    const/4 v6, 0x0

    .line 299
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/android/emailcommon/smime/CertificateMgr;->saveKeystore()V

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 305
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "smimeOwnCertificateAlias"

    aput-object v4, v2, v1

    .line 309
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "smimeOwnCertificateAlias=?"

    .line 311
    .local v3, selectionArgs:Ljava/lang/String;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 316
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 317
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 318
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 320
    .local v7, cv:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 321
    .local v9, tmp:Ljava/lang/String;
    const-string v1, "smimeOwnCertificateAlias"

    invoke-virtual {v7, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v9           #tmp:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 333
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    :cond_2
    :goto_0
    return v10

    .line 334
    :catch_0
    move-exception v8

    .line 335
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 327
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selectionArgs:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 328
    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    new-instance v1, Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 333
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 336
    :cond_3
    :goto_1
    throw v1

    .line 334
    :catch_2
    move-exception v8

    .line 335
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public renameCertificate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "newName"
    .parameter "oldName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateManagerException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 465
    :try_start_0
    iget-object v3, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    .line 466
    .local v2, key:Ljava/security/Key;
    iget-object v3, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, p2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 467
    .local v0, chain:[Ljava/security/cert/Certificate;
    iget-object v3, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4, v0}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 468
    iget-object v3, p0, Lcom/android/emailcommon/smime/CertificateMgr;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, p2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lcom/android/emailcommon/smime/CertificateMgr;->saveKeystore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v0           #chain:[Ljava/security/cert/Certificate;
    .end local v2           #key:Ljava/security/Key;
    :cond_0
    return-void

    .line 470
    :catch_0
    move-exception v1

    .line 471
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/emailcommon/smime/CertificateManagerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
