.class public Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;
.super Ljava/io/OutputStream;
.source "CMSAuthenticatedGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MacOutputStream"
.end annotation


# instance fields
.field private mac:Ljavax/crypto/Mac;

.field private final out:Ljava/io/OutputStream;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 96
    return-void
.end method

.method public getMac()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->mac:Ljavax/crypto/Mac;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 91
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 92
    return-void
.end method

.method public write([B)V
    .locals 3
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->mac:Ljavax/crypto/Mac;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/Mac;->update([BII)V

    .line 81
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->out:Ljava/io/OutputStream;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    .line 86
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 87
    return-void
.end method
