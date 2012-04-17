.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$DHC;
.super Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;
.source "KeyAgreement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DHC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 233
    const-string v0, "ECDHC"

    new-instance v1, Lmyorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/BasicAgreement;Lmyorg/bouncycastle/crypto/DerivationFunction;)V

    .line 234
    return-void
.end method
