.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$DHwithSHA1KDF;
.super Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;
.source "KeyAgreement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DHwithSHA1KDF"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 245
    const-string v0, "ECDHwithSHA1KDF"

    new-instance v1, Lmyorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    new-instance v2, Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;

    new-instance v3, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/BasicAgreement;Lmyorg/bouncycastle/crypto/DerivationFunction;)V

    .line 247
    return-void
.end method
