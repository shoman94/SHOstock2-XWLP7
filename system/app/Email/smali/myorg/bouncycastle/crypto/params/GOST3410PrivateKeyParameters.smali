.class public Lmyorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/GOST3410KeyParameters;
.source "GOST3410PrivateKeyParameters.java"


# instance fields
.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;)V
    .locals 1
    .parameter "x"
    .parameter "params"

    .prologue
    .line 10
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/crypto/params/GOST3410KeyParameters;-><init>(ZLmyorg/bouncycastle/crypto/params/GOST3410Parameters;)V

    .line 12
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;->x:Ljava/math/BigInteger;

    .line 13
    return-void
.end method


# virtual methods
.method public getX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-object v0
.end method
