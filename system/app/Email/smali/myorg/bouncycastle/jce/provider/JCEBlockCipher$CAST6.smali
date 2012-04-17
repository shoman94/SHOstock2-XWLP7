.class public Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$CAST6;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CAST6"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 764
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 765
    return-void
.end method
