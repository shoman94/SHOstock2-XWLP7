.class public Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;
.super Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DH"
.end annotation


# static fields
.field private static params:Ljava/util/Hashtable;


# instance fields
.field certainty:I

.field engine:Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

.field initialised:Z

.field param:Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    const-string v0, "DH"

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v0, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    .line 110
    const/16 v0, 0x400

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    .line 111
    const/16 v0, 0x14

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->certainty:I

    .line 112
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    .line 117
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 8

    .prologue
    .line 140
    iget-boolean v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    if-nez v5, :cond_0

    .line 141
    new-instance v2, Ljava/lang/Integer;

    iget v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 143
    .local v2, paramStrength:Ljava/lang/Integer;
    sget-object v5, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    sget-object v5, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 155
    :goto_0
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v5, v6}, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 157
    const/4 v5, 0x1

    iput-boolean v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    .line 160
    .end local v2           #paramStrength:Ljava/lang/Integer;
    :cond_0
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-virtual {v5}, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 161
    .local v1, pair:Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 162
    .local v4, pub:Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 164
    .local v3, priv:Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    new-instance v5, Ljava/security/KeyPair;

    new-instance v6, Lmyorg/bouncycastle/jce/provider/JCEDHPublicKey;

    invoke-direct {v6, v4}, Lmyorg/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;)V

    new-instance v7, Lmyorg/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v7, v3}, Lmyorg/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;)V

    invoke-direct {v5, v6, v7}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v5

    .line 146
    .end local v1           #pair:Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .end local v3           #priv:Lmyorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .end local v4           #pub:Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    .restart local v2       #paramStrength:Ljava/lang/Integer;
    :cond_1
    new-instance v0, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 148
    .local v0, pGen:Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;
    iget v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    iget v6, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->certainty:I

    iget-object v7, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v5, v6, v7}, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 150
    new-instance v5, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lmyorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/DHParameters;)V

    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 152
    sget-object v5, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->params:Ljava/util/Hashtable;

    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v5, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0
    .parameter "strength"
    .parameter "random"

    .prologue
    .line 120
    iput p1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->strength:I

    .line 121
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->random:Ljava/security/SecureRandom;

    .line 122
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 126
    instance-of v1, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "parameter object not a DHParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 130
    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 132
    .local v0, dhParams:Ljavax/crypto/spec/DHParameterSpec;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lmyorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, p2, v2}, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/DHParameters;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 135
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->engine:Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->param:Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;->initialised:Z

    .line 137
    return-void
.end method
