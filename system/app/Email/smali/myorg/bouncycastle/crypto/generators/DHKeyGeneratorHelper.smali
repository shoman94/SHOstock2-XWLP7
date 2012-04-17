.class Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;
.super Ljava/lang/Object;
.source "DHKeyGeneratorHelper.java"


# static fields
.field static final INSTANCE:Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 13
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    .line 14
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method calculatePrivate(Lmyorg/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 8
    .parameter "dhParams"
    .parameter "random"

    .prologue
    .line 20
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 21
    .local v4, p:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v0

    .line 23
    .local v0, limit:I
    if-eqz v0, :cond_0

    .line 24
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v0, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 39
    :goto_0
    return-object v6

    .line 27
    :cond_0
    sget-object v3, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    .line 28
    .local v3, min:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getM()I

    move-result v1

    .line 29
    .local v1, m:I
    if-eqz v1, :cond_1

    .line 30
    sget-object v6, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 33
    :cond_1
    sget-object v6, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 34
    .local v2, max:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 35
    .local v5, q:Ljava/math/BigInteger;
    if-eqz v5, :cond_2

    .line 36
    sget-object v6, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 39
    :cond_2
    invoke-static {v3, v2, p2}, Lmyorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_0
.end method

.method calculatePublic(Lmyorg/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .parameter "dhParams"
    .parameter "x"

    .prologue
    .line 43
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
