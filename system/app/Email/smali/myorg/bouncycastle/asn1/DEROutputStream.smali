.class public Lmyorg/bouncycastle/asn1/DEROutputStream;
.super Ljava/io/FilterOutputStream;
.source "DEROutputStream.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERTags;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "os"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 11
    return-void
.end method

.method private writeLength(I)V
    .locals 4
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    const/16 v3, 0x7f

    if-le p1, v3, :cond_1

    .line 15
    const/4 v1, 0x1

    .line 16
    .local v1, size:I
    move v2, p1

    .line 18
    .local v2, val:I
    :goto_0
    ushr-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    or-int/lit16 v3, v1, 0x80

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 24
    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v0, v3, 0x8

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 25
    shr-int v3, p1, v0

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 24
    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    .line 28
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #val:I
    :cond_1
    int-to-byte v3, p1

    invoke-virtual {p0, v3}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 30
    :cond_2
    return-void
.end method


# virtual methods
.method public write([B)V
    .locals 3
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 74
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "buf"
    .parameter "offSet"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    return-void
.end method

.method writeEncoded(II[B)V
    .locals 1
    .parameter "flags"
    .parameter "tagNo"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeTag(II)V

    .line 63
    array-length v0, p3

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeLength(I)V

    .line 64
    invoke-virtual {p0, p3}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write([B)V

    .line 65
    return-void
.end method

.method writeEncoded(I[B)V
    .locals 1
    .parameter "tag"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 34
    array-length v0, p2

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeLength(I)V

    .line 35
    invoke-virtual {p0, p2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write([B)V

    .line 36
    return-void
.end method

.method protected writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 70
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeNull()V

    .line 90
    .end local p1
    :goto_0
    return-void

    .line 83
    .restart local p1
    :cond_0
    instance-of v0, p1, Lmyorg/bouncycastle/asn1/DERObject;

    if-eqz v0, :cond_1

    .line 84
    check-cast p1, Lmyorg/bouncycastle/asn1/DERObject;

    .end local p1
    invoke-virtual {p1, p0}, Lmyorg/bouncycastle/asn1/DERObject;->encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_0

    .line 85
    .restart local p1
    :cond_1
    instance-of v0, p1, Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v0, :cond_2

    .line 86
    check-cast p1, Lmyorg/bouncycastle/asn1/DEREncodable;

    .end local p1
    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmyorg/bouncycastle/asn1/DERObject;->encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_0

    .line 88
    .restart local p1
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "object not DEREncodable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeTag(II)V
    .locals 3
    .parameter "flags"
    .parameter "tagNo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    const/16 v2, 0x1f

    if-ge p2, v2, :cond_0

    .line 40
    or-int v2, p1, p2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 59
    :goto_0
    return-void

    .line 42
    :cond_0
    or-int/lit8 v2, p1, 0x1f

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 43
    const/16 v2, 0x80

    if-ge p2, v2, :cond_1

    .line 44
    invoke-virtual {p0, p2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    goto :goto_0

    .line 46
    :cond_1
    const/4 v2, 0x5

    new-array v1, v2, [B

    .line 47
    .local v1, stack:[B
    array-length v0, v1

    .line 49
    .local v0, pos:I
    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 52
    :cond_2
    shr-int/lit8 p2, p2, 0x7

    .line 53
    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 54
    const/16 v2, 0x7f

    if-gt p2, v2, :cond_2

    .line 56
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write([BII)V

    goto :goto_0
.end method
