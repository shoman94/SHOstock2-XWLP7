.class public interface abstract Lmyorg/bouncycastle/crypto/DerivationFunction;
.super Ljava/lang/Object;
.source "DerivationFunction.java"


# virtual methods
.method public abstract generateBytes([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract init(Lmyorg/bouncycastle/crypto/DerivationParameters;)V
.end method
