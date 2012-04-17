.class public Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/ECKeyParameters;
.source "ECPrivateKeyParameters.java"


# instance fields
.field d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 1
    .parameter "d"
    .parameter "params"

    .prologue
    .line 10
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;-><init>(ZLmyorg/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 11
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->d:Ljava/math/BigInteger;

    .line 12
    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->d:Ljava/math/BigInteger;

    return-object v0
.end method
