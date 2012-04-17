.class public Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$TEA;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TEA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 773
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/TEAEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/TEAEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 774
    return-void
.end method
