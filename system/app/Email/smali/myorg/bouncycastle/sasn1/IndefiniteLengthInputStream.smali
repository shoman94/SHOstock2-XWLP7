.class Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;
.super Lmyorg/bouncycastle/sasn1/LimitedInputStream;
.source "IndefiniteLengthInputStream.java"


# instance fields
.field private _b1:I

.field private _b2:I

.field private _eofOn00:Z

.field private _eofReached:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/sasn1/LimitedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    iput-boolean v1, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 11
    iput-boolean v0, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofOn00:Z

    .line 16
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b1:I

    .line 17
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b2:I

    .line 18
    iget v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b2:I

    if-gez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 19
    return-void

    :cond_0
    move v0, v1

    .line 18
    goto :goto_0
.end method


# virtual methods
.method checkForEof()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 26
    iget-boolean v0, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b1:I

    if-nez v0, :cond_0

    iget v0, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b2:I

    if-nez v0, :cond_0

    .line 27
    iput-boolean v1, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 28
    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 30
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 33
    invoke-virtual {p0}, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->checkForEof()V

    .line 35
    iget-boolean v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-eqz v2, :cond_0

    .line 57
    :goto_0
    return v1

    .line 39
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/sasn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 46
    .local v0, b:I
    if-gez v0, :cond_1

    .line 47
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofReached:Z

    goto :goto_0

    .line 52
    :cond_1
    iget v1, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b1:I

    .line 54
    .local v1, v:I
    iget v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b2:I

    iput v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b1:I

    .line 55
    iput v0, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b2:I

    goto :goto_0
.end method

.method setEofOn00(Z)V
    .locals 0
    .parameter "eofOn00"

    .prologue
    .line 22
    iput-boolean p1, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofOn00:Z

    .line 23
    return-void
.end method
