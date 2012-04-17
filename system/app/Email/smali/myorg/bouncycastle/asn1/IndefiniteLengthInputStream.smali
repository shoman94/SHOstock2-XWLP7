.class Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;
.super Lmyorg/bouncycastle/asn1/LimitedInputStream;
.source "IndefiniteLengthInputStream.java"


# instance fields
.field private _b1:I

.field private _b2:I

.field private _eofOn00:Z

.field private _eofReached:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    .line 17
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 18
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 20
    iget v0, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-gez v0, :cond_0

    .line 22
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 25
    :cond_0
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    .line 26
    return-void
.end method

.method private checkForEof()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    if-nez v0, :cond_0

    iget v0, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-nez v0, :cond_0

    .line 35
    iput-boolean v1, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 36
    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 38
    :cond_0
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    return v0
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const/4 v1, -0x1

    .line 89
    :goto_0
    return v1

    .line 77
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 79
    .local v0, b:I
    if-gez v0, :cond_1

    .line 81
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 84
    :cond_1
    iget v1, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 86
    .local v1, v:I
    iget v2, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    iput v2, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 87
    iput v0, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-nez v1, :cond_0

    const/4 v1, 0x3

    if-ge p3, v1, :cond_1

    .line 44
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmyorg/bouncycastle/asn1/LimitedInputStream;->read([BII)I

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 47
    :cond_1
    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-eqz v1, :cond_2

    .line 48
    const/4 v1, -0x1

    goto :goto_0

    .line 51
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 53
    .local v0, numRead:I
    if-gez v0, :cond_3

    .line 55
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 58
    :cond_3
    iget v1, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 59
    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 61
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 62
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 64
    iget v1, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-gez v1, :cond_4

    .line 66
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 69
    :cond_4
    add-int/lit8 v1, v0, 0x2

    goto :goto_0
.end method

.method setEofOn00(Z)V
    .locals 0
    .parameter "eofOn00"

    .prologue
    .line 29
    iput-boolean p1, p0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    .line 30
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    .line 31
    return-void
.end method
