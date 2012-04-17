.class public Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "JCEDHKeyAgreement.java"


# static fields
.field private static final algorithms:Ljava/util/Hashtable;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private random:Ljava/security/SecureRandom;

.field private result:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 35
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    sput-object v3, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    .line 38
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 39
    .local v2, i64:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/Integer;

    const/16 v3, 0xc0

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 40
    .local v1, i192:Ljava/lang/Integer;
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 42
    .local v0, i128:Ljava/lang/Integer;
    sget-object v3, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    const-string v4, "DES"

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v3, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    const-string v4, "DESEDE"

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v3, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    const-string v4, "BLOWFISH"

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    return-void
.end method

.method private bigIntToBytes(Ljava/math/BigInteger;)[B
    .locals 5
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 50
    .local v1, tmp:[B
    aget-byte v2, v1, v4

    if-nez v2, :cond_0

    .line 51
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    new-array v0, v2, [B

    .line 53
    .local v0, ntmp:[B
    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .end local v0           #ntmp:[B
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 4
    .parameter "key"
    .parameter "lastPhase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Diffie-Hellman not initialised."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    instance-of v1, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "DHKeyAgreement doPhase requires DHPublicKey"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    .line 69
    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 71
    .local v0, pubKey:Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    :cond_2
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "DHPublicKey not for this KeyAgreement!"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_3
    if-eqz p2, :cond_4

    .line 76
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .end local p1
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    .line 77
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    .line 79
    .restart local p1
    :cond_4
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .end local p1
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    .line 82
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEDHPublicKey;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    goto :goto_0
.end method

.method protected engineGenerateSecret([BI)I
    .locals 3
    .parameter "sharedSecret"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Diffie-Hellman not initialised."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 101
    .local v0, secret:[B
    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 102
    new-instance v1, Ljavax/crypto/ShortBufferException;

    const-string v2, "DHKeyAgreement - buffer too short"

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_1
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    array-length v1, v0

    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 6
    .parameter "algorithm"

    .prologue
    const/4 v5, 0x0

    .line 111
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v4, :cond_0

    .line 112
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Diffie-Hellman not initialised."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_0
    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, algKey:Ljava/lang/String;
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 118
    .local v3, res:[B
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 121
    .local v2, length:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    new-array v1, v4, [B

    .line 122
    .local v1, key:[B
    array-length v4, v1

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    const-string v4, "DES"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    invoke-static {v1}, Lmyorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 128
    :cond_1
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 131
    .end local v1           #key:[B
    .end local v2           #length:Ljava/lang/Integer;
    :goto_0
    return-object v4

    :cond_2
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method protected engineGenerateSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 161
    instance-of v1, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "DHKeyAgreement requires DHPrivateKey"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 165
    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 167
    .local v0, privKey:Ljavax/crypto/interfaces/DHPrivateKey;
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->random:Ljava/security/SecureRandom;

    .line 168
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    .line 169
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    .line 170
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    .line 171
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 136
    instance-of v2, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v2, :cond_0

    .line 137
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "DHKeyAgreement requires DHPrivateKey for initialisation"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, p1

    .line 139
    check-cast v1, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 141
    .local v1, privKey:Ljavax/crypto/interfaces/DHPrivateKey;
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->random:Ljava/security/SecureRandom;

    .line 143
    if-eqz p2, :cond_2

    .line 144
    instance-of v2, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v2, :cond_1

    .line 145
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "DHKeyAgreement only accepts DHParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p2

    .line 148
    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 150
    .local v0, p:Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    .line 151
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    .line 157
    .end local v0           #p:Ljavax/crypto/spec/DHParameterSpec;
    :goto_0
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    .line 158
    return-void

    .line 153
    :cond_2
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    .line 154
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    goto :goto_0
.end method
