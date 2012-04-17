.class public Lmyorg/bouncycastle/jce/provider/util/NullDigest;
.super Ljava/lang/Object;
.source "NullDigest.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Digest;


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/util/NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 28
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/util/NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 30
    .local v0, res:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/util/NullDigest;->reset()V

    .line 34
    array-length v1, v0

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "NULL"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/util/NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/util/NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 39
    return-void
.end method

.method public update(B)V
    .locals 1
    .parameter "in"

    .prologue
    .line 20
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/util/NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 21
    return-void
.end method

.method public update([BII)V
    .locals 1
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 24
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/util/NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 25
    return-void
.end method
