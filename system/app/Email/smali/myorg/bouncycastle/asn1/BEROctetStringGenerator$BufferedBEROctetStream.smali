.class Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
.super Ljava/io/OutputStream;
.source "BEROctetStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedBEROctetStream"
.end annotation


# instance fields
.field private _buf:[B

.field private _derOut:Lmyorg/bouncycastle/asn1/DEROutputStream;

.field private _off:I

.field final synthetic this$0:Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;[B)V
    .locals 2
    .parameter
    .parameter "buf"

    .prologue
    .line 34
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 35
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 37
    new-instance v0, Lmyorg/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p1, Lmyorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lmyorg/bouncycastle/asn1/DEROutputStream;

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 68
    iget v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    if-eqz v1, :cond_0

    .line 69
    iget v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    new-array v0, v1, [B

    .line 70
    .local v0, bytes:[B
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v2, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lmyorg/bouncycastle/asn1/DEROutputStream;

    invoke-static {v1, v0}, Lmyorg/bouncycastle/asn1/DEROctetString;->encode(Lmyorg/bouncycastle/asn1/DEROutputStream;[B)V

    .line 75
    .end local v0           #bytes:[B
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;->writeBEREnd()V

    .line 76
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 43
    iget v0, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lmyorg/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/DEROctetString;->encode(Lmyorg/bouncycastle/asn1/DEROutputStream;[B)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 47
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    :goto_0
    if-lez p3, :cond_0

    .line 51
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v1, v1

    iget v2, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 52
    .local v0, numToCopy:I
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v2, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/2addr v1, v0

    iput v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 55
    iget v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 65
    .end local v0           #numToCopy:I
    :cond_0
    return-void

    .line 59
    .restart local v0       #numToCopy:I
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lmyorg/bouncycastle/asn1/DEROutputStream;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    invoke-static {v1, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;->encode(Lmyorg/bouncycastle/asn1/DEROutputStream;[B)V

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 62
    add-int/2addr p2, v0

    .line 63
    sub-int/2addr p3, v0

    .line 64
    goto :goto_0
.end method
