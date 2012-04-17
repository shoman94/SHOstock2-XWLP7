.class public Lmyorg/bouncycastle/crypto/engines/AESWrapEngine;
.super Lmyorg/bouncycastle/crypto/engines/RFC3394WrapEngine;
.source "AESWrapEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 15
    return-void
.end method
