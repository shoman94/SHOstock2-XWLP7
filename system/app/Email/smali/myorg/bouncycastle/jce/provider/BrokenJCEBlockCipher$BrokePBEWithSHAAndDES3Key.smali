.class public Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHAAndDES3Key;
.super Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;
.source "BrokenJCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrokePBEWithSHAAndDES3Key"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 418
    new-instance v1, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0xc0

    const/16 v5, 0x40

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;IIII)V

    .line 419
    return-void
.end method
