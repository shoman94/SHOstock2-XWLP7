.class public Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES;
.super Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;
.source "BrokenJCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrokePBEWithSHA1AndDES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v4, 0x40

    .line 409
    new-instance v1, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lmyorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;IIII)V

    .line 410
    return-void
.end method
