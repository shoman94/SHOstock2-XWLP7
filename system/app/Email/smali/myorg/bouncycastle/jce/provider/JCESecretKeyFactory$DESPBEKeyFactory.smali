.class public Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;
.super Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESPBEKeyFactory"
.end annotation


# instance fields
.field private digest:I

.field private forCipher:Z

.field private ivSize:I

.field private keySize:I

.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;ZIIII)V
    .locals 0
    .parameter "algorithm"
    .parameter "oid"
    .parameter "forCipher"
    .parameter "scheme"
    .parameter "digest"
    .parameter "keySize"
    .parameter "ivSize"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 137
    iput-boolean p3, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->forCipher:Z

    .line 138
    iput p4, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->scheme:I

    .line 139
    iput p5, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->digest:I

    .line 140
    iput p6, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->keySize:I

    .line 141
    iput p7, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->ivSize:I

    .line 142
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 10
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 145
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_3

    move-object v7, p1

    .line 146
    check-cast v7, Ljavax/crypto/spec/PBEKeySpec;

    .line 149
    .local v7, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;->algOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget v3, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->scheme:I

    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->digest:I

    iget v5, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->keySize:I

    iget v6, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->ivSize:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 170
    :goto_0
    return-object v0

    .line 154
    :cond_0
    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->forCipher:Z

    if-eqz v0, :cond_1

    .line 155
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->scheme:I

    iget v1, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->digest:I

    iget v2, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->keySize:I

    iget v3, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->ivSize:I

    invoke-static {v7, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    .line 160
    .local v8, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_1
    instance-of v0, v8, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    move-object v0, v8

    .line 161
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    check-cast v9, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .line 163
    .local v9, kParam:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 170
    :goto_2
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;->algOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget v3, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->scheme:I

    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->digest:I

    iget v5, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->keySize:I

    iget v6, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->ivSize:I

    invoke-direct/range {v0 .. v8}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 157
    .end local v8           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .end local v9           #kParam:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    :cond_1
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->scheme:I

    iget v1, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->digest:I

    iget v2, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;->keySize:I

    invoke-static {v7, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    .restart local v8       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_1

    :cond_2
    move-object v9, v8

    .line 165
    check-cast v9, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .line 167
    .restart local v9       #kParam:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_2

    .line 174
    .end local v7           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v8           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .end local v9           #kParam:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    :cond_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
