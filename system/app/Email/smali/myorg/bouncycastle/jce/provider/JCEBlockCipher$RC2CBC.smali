.class public Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$RC2CBC;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RC2CBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 656
    new-instance v0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    .line 657
    return-void
.end method
