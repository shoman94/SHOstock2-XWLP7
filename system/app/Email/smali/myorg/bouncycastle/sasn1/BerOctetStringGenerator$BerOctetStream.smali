.class Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BerOctetStream;
.super Ljava/io/OutputStream;
.source "BerOctetStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BerOctetStream"
.end annotation


# instance fields
.field private _buf:[B

.field final synthetic this$0:Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BerOctetStream;->this$0:Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;

    invoke-virtual {v0}, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;->writeBerEnd()V

    .line 57
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
    .line 38
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BerOctetStream;->_buf:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 40
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BerOctetStream;->this$0:Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;

    iget-object v0, v0, Lmyorg/bouncycastle/sasn1/Asn1Generator;->_out:Ljava/io/OutputStream;

    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BerOctetStream;->_buf:[B

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 41
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BerOctetStream;->this$0:Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;

    iget-object v0, v0, Lmyorg/bouncycastle/sasn1/Asn1Generator;->_out:Ljava/io/OutputStream;

    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 45
    return-void
.end method

.method public write([BII)V
    .locals 3
    .parameter "buf"
    .parameter "offSet"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-array v0, p3, [B

    .line 50
    .local v0, bytes:[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object v1, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BerOctetStream;->this$0:Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;

    iget-object v1, v1, Lmyorg/bouncycastle/sasn1/Asn1Generator;->_out:Ljava/io/OutputStream;

    new-instance v2, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 53
    return-void
.end method
