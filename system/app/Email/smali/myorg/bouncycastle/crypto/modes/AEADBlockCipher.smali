.class public interface abstract Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;
.super Ljava/lang/Object;
.source "AEADBlockCipher.java"


# virtual methods
.method public abstract doFinal([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method

.method public abstract getOutputSize(I)I
.end method

.method public abstract getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;
.end method

.method public abstract getUpdateOutputSize(I)I
.end method

.method public abstract init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract processBytes([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method
