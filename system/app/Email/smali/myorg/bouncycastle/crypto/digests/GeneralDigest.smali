.class public abstract Lmyorg/bouncycastle/crypto/digests/GeneralDigest;
.super Ljava/lang/Object;
.source "GeneralDigest.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/ExtendedDigest;


# instance fields
.field private byteCount:J

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 23
    return-void
.end method

.method protected constructor <init>(Lmyorg/bouncycastle/crypto/digests/GeneralDigest;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 31
    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 34
    iget-wide v0, p1, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 35
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .prologue
    .line 82
    iget-wide v2, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/4 v4, 0x3

    shl-long v0, v2, v4

    .line 87
    .local v0, bitLength:J
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 89
    :goto_0
    iget v2, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_0

    .line 90
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->processLength(J)V

    .line 95
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->processBlock()V

    .line 96
    return-void
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x40

    return v0
.end method

.method protected abstract processBlock()V
.end method

.method protected abstract processLength(J)V
.end method

.method protected abstract processWord([BI)V
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 101
    iput v3, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    aput-byte v3, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 40
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 42
    iput v3, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 45
    :cond_0
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 46
    return-void
.end method

.method public update([BII)V
    .locals 4
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 52
    :goto_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 53
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 55
    add-int/lit8 p2, p2, 0x1

    .line 56
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 62
    :cond_0
    :goto_1
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    .line 63
    invoke-virtual {p0, p1, p2}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 65
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 66
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 67
    iget-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    goto :goto_1

    .line 73
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 74
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 76
    add-int/lit8 p2, p2, 0x1

    .line 77
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 79
    :cond_2
    return-void
.end method
