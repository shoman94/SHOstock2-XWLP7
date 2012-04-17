.class public Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
.super Lmyorg/bouncycastle/crypto/CryptoException;
.source "InvalidCipherTextException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/CryptoException;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method
