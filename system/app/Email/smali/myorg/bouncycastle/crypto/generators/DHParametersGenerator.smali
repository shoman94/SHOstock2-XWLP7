.class public Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;
.super Ljava/lang/Object;
.source "DHParametersGenerator.java"


# static fields
.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private certainty:I

.field private random:Ljava/security/SecureRandom;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateParameters()Lmyorg/bouncycastle/crypto/params/DHParameters;
    .locals 7

    .prologue
    .line 39
    iget v0, p0, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->size:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->certainty:I

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v4, v5}, Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;->generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v6

    .line 41
    .local v6, safePrimes:[Ljava/math/BigInteger;
    const/4 v0, 0x0

    aget-object v1, v6, v0

    .line 42
    .local v1, p:Ljava/math/BigInteger;
    const/4 v0, 0x1

    aget-object v3, v6, v0

    .line 43
    .local v3, q:Ljava/math/BigInteger;
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v3, v0}, Lmyorg/bouncycastle/crypto/generators/DHParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 45
    .local v2, g:Ljava/math/BigInteger;
    new-instance v0, Lmyorg/bouncycastle/crypto/params/DHParameters;

    sget-object v4, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHValidationParameters;)V

    return-object v0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0
    .parameter "size"
    .parameter "certainty"
    .parameter "random"

    .prologue
    .line 24
    iput p1, p0, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->size:I

    .line 25
    iput p2, p0, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->certainty:I

    .line 26
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 27
    return-void
.end method
