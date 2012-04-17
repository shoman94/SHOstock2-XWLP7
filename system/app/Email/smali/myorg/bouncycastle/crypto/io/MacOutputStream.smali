.class public Lmyorg/bouncycastle/crypto/io/MacOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MacOutputStream.java"


# instance fields
.field protected mac:Lmyorg/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lmyorg/bouncycastle/crypto/Mac;)V
    .locals 0
    .parameter "stream"
    .parameter "mac"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/io/MacOutputStream;->mac:Lmyorg/bouncycastle/crypto/Mac;

    .line 16
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/io/MacOutputStream;->mac:Lmyorg/bouncycastle/crypto/Mac;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    .line 20
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 21
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/io/MacOutputStream;->mac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 25
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 26
    return-void
.end method
