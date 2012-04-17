.class public Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartOutbound;
.super Ljava/lang/Object;
.source "CMSProcessableBodyPartOutbound.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/CMSProcessable;


# instance fields
.field private bodyPart:Ljavax/mail/BodyPart;

.field private defaultContentTransferEncoding:Ljava/lang/String;


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartOutbound;->bodyPart:Ljavax/mail/BodyPart;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartOutbound;->bodyPart:Ljavax/mail/BodyPart;

    check-cast v2, Ljavax/mail/internet/MimeBodyPart;

    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartOutbound;->defaultContentTransferEncoding:Ljava/lang/String;

    invoke-static {v2, v3}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->isCanonicalisationRequired(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v1, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;

    invoke-direct {v1, p1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local p1
    .local v1, out:Ljava/io/OutputStream;
    move-object p1, v1

    .line 50
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local p1
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartOutbound;->bodyPart:Ljavax/mail/BodyPart;

    invoke-virtual {v2, p1}, Ljavax/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljavax/mail/MessagingException;
    new-instance v2, Lmyorg/bouncycastle/cms/CMSException;

    const-string v3, "can\'t write BodyPart to stream."

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
