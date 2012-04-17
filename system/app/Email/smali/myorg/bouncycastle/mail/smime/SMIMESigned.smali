.class public Lmyorg/bouncycastle/mail/smime/SMIMESigned;
.super Lmyorg/bouncycastle/cms/CMSSignedData;
.source "SMIMESigned.java"


# instance fields
.field content:Ljavax/mail/internet/MimeBodyPart;

.field message:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    check-cast v0, Ljavax/activation/MailcapCommandMap;

    .line 75
    .local v0, mc:Ljavax/activation/MailcapCommandMap;
    const-string v1, "application/pkcs7-signature;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.pkcs7_signature"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 76
    const-string v1, "application/pkcs7-mime;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.pkcs7_mime"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 77
    const-string v1, "application/x-pkcs7-signature;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.x_pkcs7_signature"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 78
    const-string v1, "application/x-pkcs7-mime;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.x_pkcs7_mime"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 79
    const-string v1, "multipart/signed;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.multipart_signed"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 81
    invoke-static {v0}, Ljavax/activation/CommandMap;->setDefaultCommandMap(Ljavax/activation/CommandMap;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Part;)V
    .locals 3
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Lmyorg/bouncycastle/cms/CMSException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->getInputStream(Ljavax/mail/Part;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lmyorg/bouncycastle/cms/CMSSignedData;-><init>(Ljava/io/InputStream;)V

    .line 129
    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->message:Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->getSignedContent()Lmyorg/bouncycastle/cms/CMSProcessable;

    move-result-object v0

    .line 133
    .local v0, cont:Lmyorg/bouncycastle/cms/CMSProcessable;
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lmyorg/bouncycastle/cms/CMSProcessable;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 136
    .local v1, contBytes:[B
    invoke-static {v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart([B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->content:Ljavax/mail/internet/MimeBodyPart;

    .line 138
    .end local v1           #contBytes:[B
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimeMultipart;)V
    .locals 3
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 92
    new-instance v0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;

    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;-><init>(Ljavax/mail/BodyPart;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->getInputStream(Ljavax/mail/Part;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/cms/CMSSignedData;-><init>(Lmyorg/bouncycastle/cms/CMSProcessable;Ljava/io/InputStream;)V

    .line 95
    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->message:Ljava/lang/Object;

    .line 96
    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->content:Ljavax/mail/internet/MimeBodyPart;

    .line 97
    return-void
.end method

.method private static getInputStream(Ljavax/mail/Part;)Ljava/io/InputStream;
    .locals 4
    .parameter "bodyPart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    const-string v1, "multipart/signed"

    invoke-interface {p0, v1}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "attempt to create signed data object from multipart content - use MimeMultipart constructor."

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t extract input stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-interface {p0}, Ljavax/mail/Part;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getContent()Ljavax/mail/internet/MimeBodyPart;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->content:Ljavax/mail/internet/MimeBodyPart;

    return-object v0
.end method
