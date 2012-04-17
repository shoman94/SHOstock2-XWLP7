.class public Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GOST28147;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GOST28147"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 596
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 597
    return-void
.end method
