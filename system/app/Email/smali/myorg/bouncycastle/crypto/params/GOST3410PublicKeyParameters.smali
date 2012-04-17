.class public Lmyorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/GOST3410KeyParameters;
.source "GOST3410PublicKeyParameters.java"


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;)V
    .locals 1
    .parameter "y"
    .parameter "params"

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/crypto/params/GOST3410KeyParameters;-><init>(ZLmyorg/bouncycastle/crypto/params/GOST3410Parameters;)V

    .line 12
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;->y:Ljava/math/BigInteger;

    .line 13
    return-void
.end method


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;->y:Ljava/math/BigInteger;

    return-object v0
.end method
