.class public interface abstract Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;
.super Ljava/lang/Object;
.source "AsymmetricBlockCipher.java"


# virtual methods
.method public abstract getInputBlockSize()I
.end method

.method public abstract getOutputBlockSize()I
.end method

.method public abstract init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract processBlock([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method
