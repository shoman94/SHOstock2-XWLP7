.class public Lmyorg/bouncycastle/asn1/BERGenerator;
.super Lmyorg/bouncycastle/asn1/ASN1Generator;
.source "BERGenerator.java"


# instance fields
.field private _isExplicit:Z

.field private _tagNo:I

.field private _tagged:Z


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .parameter "out"
    .parameter "tagNo"
    .parameter "isExplicit"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 21
    iput-boolean p3, p0, Lmyorg/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    .line 22
    iput p2, p0, Lmyorg/bouncycastle/asn1/BERGenerator;->_tagNo:I

    .line 23
    return-void
.end method

.method private writeHdr(I)V
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 31
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public getRawOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected writeBEREnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 63
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 65
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 68
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 70
    :cond_0
    return-void
.end method

.method protected writeBERHeader(I)V
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v1, :cond_2

    .line 36
    iget v1, p0, Lmyorg/bouncycastle/asn1/BERGenerator;->_tagNo:I

    or-int/lit16 v0, v1, 0x80

    .line 38
    .local v0, tagNum:I
    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v1, :cond_0

    .line 39
    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 40
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 51
    .end local v0           #tagNum:I
    :goto_0
    return-void

    .line 42
    .restart local v0       #tagNum:I
    :cond_0
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    .line 43
    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_0

    .line 49
    .end local v0           #tagNum:I
    :cond_2
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_0
.end method
