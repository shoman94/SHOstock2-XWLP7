.class Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SMIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/mail/smime/SMIMEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Base64CRLFOutputStream"
.end annotation


# static fields
.field protected static newline:[B


# instance fields
.field private isCrlfStream:Z

.field protected lastb:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 496
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->newline:[B

    .line 497
    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->newline:[B

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 498
    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->newline:[B

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 499
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outputstream"

    .prologue
    .line 459
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->lastb:I

    .line 461
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xd

    const/16 v1, 0xa

    .line 464
    if-ne p1, v2, :cond_1

    .line 465
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 478
    :cond_0
    :goto_0
    iput p1, p0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->lastb:I

    .line 479
    return-void

    .line 466
    :cond_1
    if-ne p1, v1, :cond_4

    .line 467
    iget v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->lastb:I

    if-eq v0, v2, :cond_3

    .line 468
    iget-boolean v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->isCrlfStream:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->lastb:I

    if-eq v0, v1, :cond_0

    .line 469
    :cond_2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 472
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->isCrlfStream:Z

    goto :goto_0

    .line 475
    :cond_4
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->write([BII)V

    .line 483
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int v1, p2, p3

    if-eq v0, v1, :cond_0

    .line 487
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;->write(I)V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_0
    return-void
.end method
