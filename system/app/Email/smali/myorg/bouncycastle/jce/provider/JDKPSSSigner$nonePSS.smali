.class public Lmyorg/bouncycastle/jce/provider/JDKPSSSigner$nonePSS;
.super Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;
.source "JDKPSSSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "nonePSS"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 211
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;Z)V

    .line 212
    return-void
.end method
