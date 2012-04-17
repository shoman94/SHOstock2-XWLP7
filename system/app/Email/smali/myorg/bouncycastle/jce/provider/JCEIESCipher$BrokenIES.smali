.class public Lmyorg/bouncycastle/jce/provider/JCEIESCipher$BrokenIES;
.super Lmyorg/bouncycastle/jce/provider/JCEIESCipher;
.source "JCEIESCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEIESCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrokenIES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 273
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/IESEngine;

    new-instance v1, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    new-instance v2, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;

    new-instance v3, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    new-instance v3, Lmyorg/bouncycastle/crypto/macs/HMac;

    new-instance v4, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/macs/HMac;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/IESEngine;-><init>(Lmyorg/bouncycastle/crypto/BasicAgreement;Lmyorg/bouncycastle/crypto/DerivationFunction;Lmyorg/bouncycastle/crypto/Mac;)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEIESCipher;-><init>(Lmyorg/bouncycastle/crypto/engines/IESEngine;)V

    .line 275
    return-void
.end method
