.class public Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;
.super Ljava/lang/Object;
.source "CMSProcessableBodyPartInbound.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/CMSProcessable;


# instance fields
.field private final bodyPart:Ljavax/mail/BodyPart;

.field private final defaultContentTransferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/BodyPart;)V
    .locals 1
    .parameter "bodyPart"

    .prologue
    .line 26
    const-string v0, "7bit"

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;-><init>(Ljavax/mail/BodyPart;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljavax/mail/BodyPart;Ljava/lang/String;)V
    .locals 0
    .parameter "bodyPart"
    .parameter "defaultContentTransferEncoding"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;->bodyPart:Ljavax/mail/BodyPart;

    .line 38
    iput-object p2, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;->defaultContentTransferEncoding:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;->bodyPart:Ljavax/mail/BodyPart;

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
    .line 43
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;->bodyPart:Ljavax/mail/BodyPart;

    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;->defaultContentTransferEncoding:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->outputBodyPart(Ljava/io/OutputStream;Ljavax/mail/BodyPart;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljavax/mail/MessagingException;
    new-instance v1, Lmyorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t write BodyPart to stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
