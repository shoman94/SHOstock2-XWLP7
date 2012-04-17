.class public Lmyorg/bouncycastle/crypto/DataLengthException;
.super Lmyorg/bouncycastle/crypto/RuntimeCryptoException;
.source "DataLengthException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/RuntimeCryptoException;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/RuntimeCryptoException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
