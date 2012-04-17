.class public Lmyorg/bouncycastle/crypto/engines/CamelliaWrapEngine;
.super Lmyorg/bouncycastle/crypto/engines/RFC3394WrapEngine;
.source "CamelliaWrapEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/CamelliaEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 14
    return-void
.end method
