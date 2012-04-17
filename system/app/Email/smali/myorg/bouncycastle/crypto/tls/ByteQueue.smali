.class public Lmyorg/bouncycastle/crypto/tls/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field private available:I

.field private databuf:[B

.field private skipped:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    .line 42
    iput v1, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    .line 47
    iput v1, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    return-void
.end method

.method public static final nextTwoPow(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 21
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 22
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 23
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 24
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 25
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 26
    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method public addData([BII)V
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 77
    iget v1, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 78
    array-length v1, p1

    invoke-static {v1}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->nextTwoPow(I)I

    move-result v1

    new-array v0, v1, [B

    .line 79
    .local v0, tmp:[B
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iput v4, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    .line 81
    iput-object v0, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    .line 83
    .end local v0           #tmp:[B
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v2, v3

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget v1, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v1, p3

    iput v1, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    .line 85
    return-void
.end method

.method public read([BIII)V
    .locals 3
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .parameter "skip"

    .prologue
    .line 58
    iget v0, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    sub-int/2addr v0, p4

    if-ge v0, p3, :cond_0

    .line 59
    new-instance v0, Lmyorg/bouncycastle/crypto/tls/TlsRuntimeException;

    const-string v1, "Not enough data to read"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_1

    .line 62
    new-instance v0, Lmyorg/bouncycastle/crypto/tls/TlsRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is too small for a read of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    add-int/2addr v1, p4

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-void
.end method

.method public removeData(I)V
    .locals 5
    .parameter "i"

    .prologue
    const/4 v4, 0x0

    .line 93
    iget v0, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    if-le p1, v0, :cond_0

    .line 94
    new-instance v0, Lmyorg/bouncycastle/crypto/tls/TlsRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, only got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    .line 101
    iget v0, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    add-int/2addr v0, p1

    iput v0, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    .line 107
    iget v0, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iput v4, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->skipped:I

    .line 111
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->available:I

    return v0
.end method
