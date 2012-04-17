.class Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;
.super Lmyorg/bouncycastle/asn1/LimitedInputStream;
.source "DefiniteLengthInputStream.java"


# static fields
.field private static final EMPTY_BYTES:[B


# instance fields
.field private final _originalLength:I

.field private _remaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .parameter "in"
    .parameter "length"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    if-gez p2, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative lengths not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput p2, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    .line 24
    iput p2, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    .line 26
    if-nez p2, :cond_1

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method getRemaining()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget v1, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_1

    .line 37
    const/4 v0, -0x1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 42
    .local v0, b:I
    if-gez v0, :cond_2

    .line 43
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEF length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object truncated by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_2
    iget v1, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_0

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget v2, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v2, :cond_1

    .line 56
    const/4 v0, -0x1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    iget v2, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60
    .local v1, toRead:I
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 62
    .local v0, numRead:I
    if-gez v0, :cond_2

    .line 63
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEF length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " object truncated by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_2
    iget v2, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v2, :cond_0

    .line 68
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    goto :goto_0
.end method

.method toByteArray()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget v1, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_0

    .line 76
    sget-object v0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    .line 85
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    new-array v0, v1, [B

    .line 80
    .local v0, bytes:[B
    iget v1, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    invoke-static {v2, v0}, Lmyorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-eqz v1, :cond_1

    .line 81
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEF length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object truncated by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    goto :goto_0
.end method
