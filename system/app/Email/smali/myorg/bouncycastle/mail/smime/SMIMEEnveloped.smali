.class public Lmyorg/bouncycastle/mail/smime/SMIMEEnveloped;
.super Lmyorg/bouncycastle/cms/CMSEnvelopedData;
.source "SMIMEEnveloped.java"


# instance fields
.field message:Ljavax/mail/internet/MimePart;


# direct methods
.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .locals 1
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnveloped;->getInputStream(Ljavax/mail/Part;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Ljava/io/InputStream;)V

    .line 39
    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnveloped;->message:Ljavax/mail/internet/MimePart;

    .line 40
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
    .line 24
    :try_start_0
    invoke-interface {p0}, Ljavax/mail/Part;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 25
    :catch_0
    move-exception v0

    .line 26
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
.end method
