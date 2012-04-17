.class public Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;
.super Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DSA"
.end annotation


# instance fields
.field certainty:I

.field engine:Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;

.field initialised:Z

.field param:Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    const-string v0, "DSA"

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 170
    new-instance v0, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->engine:Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    .line 171
    const/16 v0, 0x400

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->strength:I

    .line 172
    const/16 v0, 0x14

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->certainty:I

    .line 173
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->random:Ljava/security/SecureRandom;

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->initialised:Z

    .line 178
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 7

    .prologue
    .line 206
    iget-boolean v4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->initialised:Z

    if-nez v4, :cond_0

    .line 207
    new-instance v0, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .line 209
    .local v0, pGen:Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;
    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->strength:I

    iget v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->certainty:I

    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4, v5, v6}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 210
    new-instance v4, Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lmyorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->param:Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 211
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->engine:Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->param:Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 212
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->initialised:Z

    .line 215
    .end local v0           #pGen:Lmyorg/bouncycastle/crypto/generators/DSAParametersGenerator;
    :cond_0
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->engine:Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-virtual {v4}, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 216
    .local v1, pair:Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    .line 217
    .local v3, pub:Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .line 219
    .local v2, priv:Lmyorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;
    new-instance v4, Ljava/security/KeyPair;

    new-instance v5, Lmyorg/bouncycastle/jce/provider/JDKDSAPublicKey;

    invoke-direct {v5, v3}, Lmyorg/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;)V

    new-instance v6, Lmyorg/bouncycastle/jce/provider/JDKDSAPrivateKey;

    invoke-direct {v6, v2}, Lmyorg/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Lmyorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;)V

    invoke-direct {v4, v5, v6}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v4
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2
    .parameter "strength"
    .parameter "random"

    .prologue
    .line 181
    const/16 v0, 0x200

    if-lt p1, v0, :cond_0

    const/16 v0, 0x400

    if-gt p1, v0, :cond_0

    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "strength must be from 512 - 1024 and a multiple of 64"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    iput p1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->strength:I

    .line 187
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->random:Ljava/security/SecureRandom;

    .line 188
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 192
    instance-of v1, p1, Ljava/security/spec/DSAParameterSpec;

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "parameter object not a DSAParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 196
    check-cast v0, Ljava/security/spec/DSAParameterSpec;

    .line 198
    .local v0, dsaParams:Ljava/security/spec/DSAParameterSpec;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lmyorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p2, v2}, Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->param:Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 201
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->engine:Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->param:Lmyorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;->initialised:Z

    .line 203
    return-void
.end method
