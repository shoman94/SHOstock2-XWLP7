.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$MQV;
.super Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;
.source "KeyAgreement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MQV"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 239
    const-string v0, "ECMQV"

    new-instance v1, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/BasicAgreement;Lmyorg/bouncycastle/crypto/DerivationFunction;)V

    .line 240
    return-void
.end method
