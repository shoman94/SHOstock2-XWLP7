.class public Lmyorg/bouncycastle/mail/smime/handlers/x_pkcs7_signature;
.super Ljava/lang/Object;
.source "x_pkcs7_signature.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# static fields
.field private static final ADF:Ljavax/activation/ActivationDataFlavor;

.field private static final ADFs:[Lmyjava/awt/datatransfer/DataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Ljavax/mail/internet/MimeBodyPart;

    const-string v2, "application/x-pkcs7-signature"

    const-string v3, "Signature"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/mail/smime/handlers/x_pkcs7_signature;->ADF:Ljavax/activation/ActivationDataFlavor;

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    sget-object v2, Lmyorg/bouncycastle/mail/smime/handlers/x_pkcs7_signature;->ADF:Ljavax/activation/ActivationDataFlavor;

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/mail/smime/handlers/x_pkcs7_signature;->ADFs:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1
    .parameter "_ds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6
    .parameter "_obj"
    .parameter "_mimeType"
    .parameter "_os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    instance-of v3, p1, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v3, :cond_1

    .line 51
    :try_start_0
    check-cast p1, Ljavax/mail/internet/MimeBodyPart;

    .end local p1
    invoke-virtual {p1, p3}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, ex:Ljavax/mail/MessagingException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    .end local v1           #ex:Ljavax/mail/MessagingException;
    .restart local p1
    :cond_1
    instance-of v3, p1, [B

    if-eqz v3, :cond_2

    .line 56
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 57
    .restart local p1
    :cond_2
    instance-of v3, p1, Ljava/io/InputStream;

    if-eqz v3, :cond_3

    move-object v2, p1

    .line 59
    check-cast v2, Ljava/io/InputStream;

    .line 61
    .local v2, in:Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    if-ltz v0, :cond_0

    .line 62
    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 65
    .end local v0           #b:I
    .end local v2           #in:Ljava/io/InputStream;
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown object in writeTo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
