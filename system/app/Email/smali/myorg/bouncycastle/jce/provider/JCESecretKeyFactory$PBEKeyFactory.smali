.class public Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;
.super Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEKeyFactory"
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
    .line 93
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 95
    iput-boolean p3, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->forCipher:Z

    .line 96
    iput p4, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    .line 97
    iput p5, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    .line 98
    iput p6, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    .line 99
    iput p7, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    .line 100
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 9
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 103
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_2

    move-object v7, p1

    .line 104
    check-cast v7, Ljavax/crypto/spec/PBEKeySpec;

    .line 107
    .local v7, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;->algOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget v3, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v5, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iget v6, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 118
    :goto_0
    return-object v0

    .line 112
    :cond_0
    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->forCipher:Z

    if-eqz v0, :cond_1

    .line 113
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v1, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v2, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iget v3, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    invoke-static {v7, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    .line 118
    .local v8, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_1
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;->algOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget v3, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v4, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v5, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    iget v6, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->ivSize:I

    invoke-direct/range {v0 .. v8}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 115
    .end local v8           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_1
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->scheme:I

    iget v1, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->digest:I

    iget v2, p0, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;->keySize:I

    invoke-static {v7, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    .restart local v8       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_1

    .line 122
    .end local v7           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v8           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
