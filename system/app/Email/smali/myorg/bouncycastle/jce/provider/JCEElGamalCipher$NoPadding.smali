.class public Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher$NoPadding;
.super Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;
.source "JCEElGamalCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEElGamalCipher;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 236
    return-void
.end method
