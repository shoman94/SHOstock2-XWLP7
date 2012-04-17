.class public Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;
.super Ljava/lang/Object;
.source "SMIMEGenerator.java"


# static fields
.field private static BASE_CIPHER_NAMES:Ljava/util/Map;


# instance fields
.field protected encoding:Ljava/lang/String;

.field protected useBase64:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->BASE_CIPHER_NAMES:Ljava/util/Map;

    .line 28
    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    const-string v2, "DESEDE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->useBase64:Z

    .line 36
    const-string v0, "base64"

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->encoding:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private createKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    .locals 1
    .parameter "algName"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 182
    if-eqz p2, :cond_0

    .line 183
    invoke-static {p1, p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    goto :goto_0
.end method

.method private extractHeaders(Ljavax/mail/internet/MimeBodyPart;Ljavax/mail/internet/MimeMessage;)V
    .locals 4
    .parameter "content"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p2}, Ljavax/mail/internet/MimeMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    .line 153
    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Header;

    .line 156
    .local v1, hdr:Ljavax/mail/Header;
    invoke-virtual {v1}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v1           #hdr:Ljavax/mail/Header;
    :cond_0
    return-void
.end method


# virtual methods
.method protected createSymmetricKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    .locals 3
    .parameter "encryptionOID"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->createKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 174
    :goto_0
    return-object v2

    .line 164
    :catch_0
    move-exception v1

    .line 166
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    sget-object v2, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, algName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->createKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 170
    .end local v0           #algName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 173
    :cond_0
    if-eqz p2, :cond_1

    .line 174
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->createSymmetricKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    goto :goto_0

    .line 176
    :cond_1
    throw v1
.end method

.method protected makeContentBodyPart(Ljavax/mail/internet/MimeBodyPart;)Ljavax/mail/internet/MimeBodyPart;
    .locals 5
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    new-instance v2, Ljavax/mail/internet/MimeMessage;

    const/4 v3, 0x0

    check-cast v3, Ljavax/mail/Session;

    invoke-direct {v2, v3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 65
    .local v2, msg:Ljavax/mail/internet/MimeMessage;
    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    .line 67
    .local v0, e:Ljava/util/Enumeration;
    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Header;

    .line 72
    .local v1, hdr:Ljavax/mail/Header;
    invoke-virtual {v1}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #hdr:Ljavax/mail/Header;
    .end local v2           #msg:Ljavax/mail/internet/MimeMessage;
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljavax/mail/MessagingException;
    new-instance v3, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v4, "exception saving message state."

    invoke-direct {v3, v4, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 75
    .local v0, e:Ljava/util/Enumeration;
    .restart local v2       #msg:Ljavax/mail/internet/MimeMessage;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    .line 81
    invoke-virtual {v2}, Ljavax/mail/internet/MimeMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    .line 83
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Header;

    .line 86
    .restart local v1       #hdr:Ljavax/mail/Header;
    invoke-virtual {v1}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {v1}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 94
    .end local v1           #hdr:Ljavax/mail/Header;
    :cond_2
    return-object p1
.end method

.method protected makeContentBodyPart(Ljavax/mail/internet/MimeMessage;)Ljavax/mail/internet/MimeBodyPart;
    .locals 4
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 107
    .local v0, content:Ljavax/mail/internet/MimeBodyPart;
    :try_start_0
    const-string v2, "Message-Id"

    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 108
    const-string v2, "Mime-Version"

    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, v0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->extractHeaders(Ljavax/mail/internet/MimeBodyPart;Ljavax/mail/internet/MimeMessage;)V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 146
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v2

    .line 135
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 139
    invoke-direct {p0, v0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->extractHeaders(Ljavax/mail/internet/MimeBodyPart;Ljavax/mail/internet/MimeMessage;)V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 140
    :catch_1
    move-exception v1

    .line 141
    .local v1, e:Ljavax/mail/MessagingException;
    new-instance v2, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v3, "exception saving message state."

    invoke-direct {v2, v3, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 142
    .end local v1           #e:Ljavax/mail/MessagingException;
    :catch_2
    move-exception v1

    .line 143
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v3, "exception getting message content."

    invoke-direct {v2, v3, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
