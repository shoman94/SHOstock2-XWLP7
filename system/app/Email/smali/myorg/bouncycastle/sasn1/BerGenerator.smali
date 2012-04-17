.class public Lmyorg/bouncycastle/sasn1/BerGenerator;
.super Lmyorg/bouncycastle/sasn1/Asn1Generator;
.source "BerGenerator.java"


# instance fields
.field private _isExplicit:Z

.field private _tagged:Z


# virtual methods
.method protected writeBerEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 66
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 68
    iget-boolean v0, p0, Lmyorg/bouncycastle/sasn1/BerGenerator;->_tagged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmyorg/bouncycastle/sasn1/BerGenerator;->_isExplicit:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 71
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 73
    :cond_0
    return-void
.end method
