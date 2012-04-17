.class public Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GOST28147cbc;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GOST28147cbc"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 602
    new-instance v0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    .line 603
    return-void
.end method
