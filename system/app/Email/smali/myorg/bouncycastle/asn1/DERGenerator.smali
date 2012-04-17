.class public abstract Lmyorg/bouncycastle/asn1/DERGenerator;
.super Lmyorg/bouncycastle/asn1/ASN1Generator;
.source "DERGenerator.java"


# instance fields
.field private _isExplicit:Z

.field private _tagNo:I

.field private _tagged:Z


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    .line 18
    return-void
.end method

.method private writeLength(Ljava/io/OutputStream;I)V
    .locals 4
    .parameter "out"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    const/16 v3, 0x7f

    if-le p2, v3, :cond_1

    .line 30
    const/4 v1, 0x1

    .line 31
    .local v1, size:I
    move v2, p2

    .line 33
    .local v2, val:I
    :goto_0
    ushr-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_0
    or-int/lit16 v3, v1, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 39
    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v0, v3, 0x8

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 40
    shr-int v3, p2, v0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 39
    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    .line 43
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #val:I
    :cond_1
    int-to-byte v3, p2

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 45
    :cond_2
    return-void
.end method


# virtual methods
.method writeDEREncoded(I[B)V
    .locals 5
    .parameter "tag"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    if-eqz v3, :cond_2

    .line 55
    iget v3, p0, Lmyorg/bouncycastle/asn1/DERGenerator;->_tagNo:I

    or-int/lit16 v2, v3, 0x80

    .line 57
    .local v2, tagNum:I
    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/DERGenerator;->_isExplicit:Z

    if-eqz v3, :cond_0

    .line 58
    iget v3, p0, Lmyorg/bouncycastle/asn1/DERGenerator;->_tagNo:I

    or-int/lit8 v3, v3, 0x20

    or-int/lit16 v1, v3, 0x80

    .line 60
    .local v1, newTag:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0, p1, p2}, Lmyorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    .line 64
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Lmyorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    .line 75
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #newTag:I
    .end local v2           #tagNum:I
    :goto_0
    return-void

    .line 66
    .restart local v2       #tagNum:I
    :cond_0
    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_1

    .line 67
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    or-int/lit8 v4, v2, 0x20

    invoke-virtual {p0, v3, v4, p2}, Lmyorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, v3, v2, p2}, Lmyorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    .line 73
    .end local v2           #tagNum:I
    :cond_2
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, v3, p1, p2}, Lmyorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0
.end method

.method writeDEREncoded(Ljava/io/OutputStream;I[B)V
    .locals 1
    .parameter "out"
    .parameter "tag"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 49
    array-length v0, p3

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/asn1/DERGenerator;->writeLength(Ljava/io/OutputStream;I)V

    .line 50
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 51
    return-void
.end method
