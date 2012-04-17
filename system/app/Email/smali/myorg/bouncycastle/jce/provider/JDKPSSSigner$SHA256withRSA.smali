.class public Lmyorg/bouncycastle/jce/provider/JDKPSSSigner$SHA256withRSA;
.super Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;
.source "JDKPSSSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA256withRSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 236
    new-instance v6, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v6}, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    const-string v1, "SHA-256"

    const-string v2, "MGF1"

    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    const-string v4, "SHA-256"

    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-direct {p0, v6, v0}, Lmyorg/bouncycastle/jce/provider/JDKPSSSigner;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;)V

    .line 238
    return-void
.end method
