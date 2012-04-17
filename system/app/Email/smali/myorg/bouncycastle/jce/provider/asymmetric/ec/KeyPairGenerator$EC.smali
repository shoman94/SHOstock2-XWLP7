.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;
.super Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EC"
.end annotation


# static fields
.field private static ecParameters:Ljava/util/Hashtable;


# instance fields
.field algorithm:Ljava/lang/String;

.field certainty:I

.field ecParams:Ljava/lang/Object;

.field engine:Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

.field initialised:Z

.field param:Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    .line 55
    sget-object v0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime192v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xef

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime239v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime256v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-224"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x180

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-384"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x209

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-521"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "EC"

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 44
    const/16 v0, 0xef

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->strength:I

    .line 45
    const/16 v0, 0x32

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->certainty:I

    .line 46
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    .line 68
    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "algorithm"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 44
    const/16 v0, 0xef

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->strength:I

    .line 45
    const/16 v0, 0x32

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->certainty:I

    .line 46
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    .line 73
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 9

    .prologue
    .line 201
    iget-boolean v5, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    if-nez v5, :cond_0

    .line 202
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "EC Key Pair Generator not initialised"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    :cond_0
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {v5}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 206
    .local v1, pair:Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 207
    .local v3, pub:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 209
    .local v2, priv:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    instance-of v5, v5, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v5, :cond_1

    .line 210
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 212
    .local v0, p:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v4, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)V

    .line 213
    .local v4, pubKey:Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;
    new-instance v5, Ljava/security/KeyPair;

    new-instance v6, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v7, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v6, v7, v2, v4, v0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)V

    invoke-direct {v5, v4, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 222
    .end local v0           #p:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    .end local v4           #pubKey:Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;
    :goto_0
    return-object v5

    .line 214
    :cond_1
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 215
    new-instance v5, Ljava/security/KeyPair;

    new-instance v6, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v7, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v6, v7, v3}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    new-instance v7, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v8, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v7, v8, v2}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V

    invoke-direct {v5, v6, v7}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    .line 220
    .local v0, p:Ljava/security/spec/ECParameterSpec;
    new-instance v4, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V

    .line 222
    .restart local v4       #pubKey:Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;
    new-instance v5, Ljava/security/KeyPair;

    new-instance v6, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v7, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    invoke-direct {v6, v7, v2, v4, v0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V

    invoke-direct {v5, v4, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    goto :goto_0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3
    .parameter "strength"
    .parameter "random"

    .prologue
    .line 77
    iput p1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->strength:I

    .line 78
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->random:Ljava/security/SecureRandom;

    .line 79
    sget-object v1, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParameters:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0, v1, p2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "key size not configurable."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    .end local v0           #e:Ljava/security/InvalidAlgorithmParameterException;
    :cond_0
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "unknown key size."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 13
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 94
    instance-of v0, p1, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    move-object v12, p1

    .line 95
    check-cast v12, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 96
    .local v12, p:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 98
    new-instance v0, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v12}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v12}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v12}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, p2}, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lmyorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 101
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    .line 198
    .end local v12           #p:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    .end local p1
    :goto_0
    return-void

    .line 103
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_1

    move-object v12, p1

    .line 104
    check-cast v12, Ljava/security/spec/ECParameterSpec;

    .line 105
    .local v12, p:Ljava/security/spec/ECParameterSpec;
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 107
    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    .line 108
    .local v7, curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v7, v0, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lmyorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    .line 110
    .local v10, g:Lmyorg/bouncycastle/math/ec/ECPoint;
    new-instance v0, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v7, v10, v3, v4}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, p2}, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lmyorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 113
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    goto :goto_0

    .line 115
    .end local v7           #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    .end local v10           #g:Lmyorg/bouncycastle/math/ec/ECPoint;
    .end local v12           #p:Ljava/security/spec/ECParameterSpec;
    :cond_1
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_a

    .line 116
    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    .end local p1
    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, curveName:Ljava/lang/String;
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->algorithm:Ljava/lang/String;

    const-string v2, "ECGOST3410"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByName(Ljava/lang/String;)Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v8

    .line 120
    .local v8, ecP:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    if-nez v8, :cond_2

    .line 121
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown curve name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    new-instance v0, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 172
    .end local v8           #ecP:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    :goto_1
    iget-object v12, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    check-cast v12, Ljava/security/spec/ECParameterSpec;

    .line 174
    .restart local v12       #p:Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    .line 175
    .restart local v7       #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v7, v0, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lmyorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    .line 177
    .restart local v10       #g:Lmyorg/bouncycastle/math/ec/ECPoint;
    new-instance v0, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v12}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v7, v10, v3, v4}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, p2}, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lmyorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 180
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    goto/16 :goto_0

    .line 128
    .end local v7           #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    .end local v10           #g:Lmyorg/bouncycastle/math/ec/ECPoint;
    .end local v12           #p:Ljava/security/spec/ECParameterSpec;
    :cond_3
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x9/X962NamedCurves;->getByName(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 129
    .local v8, ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v8, :cond_9

    .line 130
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 131
    if-nez v8, :cond_4

    .line 132
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 134
    :cond_4
    if-nez v8, :cond_5

    .line 135
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getByName(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 137
    :cond_5
    if-nez v8, :cond_9

    .line 141
    :try_start_0
    new-instance v11, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v11, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 142
    .local v11, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static {v11}, Lmyorg/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 143
    if-nez v8, :cond_6

    .line 144
    invoke-static {v11}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 146
    :cond_6
    if-nez v8, :cond_7

    .line 147
    invoke-static {v11}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 149
    :cond_7
    if-nez v8, :cond_8

    .line 150
    invoke-static {v11}, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 152
    :cond_8
    if-nez v8, :cond_9

    .line 153
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown curve OID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v11           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :catch_0
    move-exception v9

    .line 157
    .local v9, ex:Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown curve name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    .end local v9           #ex:Ljava/lang/IllegalArgumentException;
    :cond_9
    new-instance v0, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    goto/16 :goto_1

    .line 182
    .end local v1           #curveName:Ljava/lang/String;
    .end local v8           #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .restart local p1
    :cond_a
    if-nez p1, :cond_b

    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 183
    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v12

    .line 184
    .local v12, p:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->ecParams:Ljava/lang/Object;

    .line 186
    new-instance v0, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v12}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v12}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v12}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, p2}, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lmyorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 189
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->engine:Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->param:Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;->initialised:Z

    goto/16 :goto_0

    .line 191
    .end local v12           #p:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    :cond_b
    if-nez p1, :cond_c

    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-nez v0, :cond_c

    .line 192
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "null parameter passed but no implicitCA set"

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_c
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "parameter object not a ECParameterSpec"

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
