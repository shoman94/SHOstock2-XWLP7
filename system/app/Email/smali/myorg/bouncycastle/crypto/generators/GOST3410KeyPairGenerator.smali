.class public Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;
.super Ljava/lang/Object;
.source "GOST3410KeyPairGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private param:Lmyorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 10

    .prologue
    .line 30
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;

    move-result-object v0

    .line 31
    .local v0, GOST3410Params:Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    .line 33
    .local v4, random:Ljava/security/SecureRandom;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 34
    .local v3, q:Ljava/math/BigInteger;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 35
    .local v2, p:Ljava/math/BigInteger;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;->getA()Ljava/math/BigInteger;

    move-result-object v1

    .line 38
    .local v1, a:Ljava/math/BigInteger;
    :cond_0
    new-instance v5, Ljava/math/BigInteger;

    const/16 v7, 0x100

    invoke-direct {v5, v7, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 39
    .local v5, x:Ljava/math/BigInteger;
    sget-object v7, Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_0

    .line 44
    invoke-virtual {v1, v5, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 46
    .local v6, y:Ljava/math/BigInteger;
    new-instance v7, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v8, Lmyorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;

    invoke-direct {v8, v6, v0}, Lmyorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;)V

    new-instance v9, Lmyorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;

    invoke-direct {v9, v5, v0}, Lmyorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;)V

    invoke-direct {v7, v8, v9}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;)V

    return-object v7
.end method

.method public init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 25
    check-cast p1, Lmyorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;

    .end local p1
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;

    .line 26
    return-void
.end method
