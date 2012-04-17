.class public abstract Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "JDKKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JDKKeyFactory$X509;,
        Lmyorg/bouncycastle/jce/provider/JDKKeyFactory$ElGamal;,
        Lmyorg/bouncycastle/jce/provider/JDKKeyFactory$GOST3410;,
        Lmyorg/bouncycastle/jce/provider/JDKKeyFactory$DSA;,
        Lmyorg/bouncycastle/jce/provider/JDKKeyFactory$DH;,
        Lmyorg/bouncycastle/jce/provider/JDKKeyFactory$RSA;
    }
.end annotation


# instance fields
.field protected elGamalFactory:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->elGamalFactory:Z

    .line 51
    return-void
.end method

.method protected static createPrivateKeyFromDERStream([B)Ljava/security/PrivateKey;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v1, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-static {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-static {v1}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromPrivateKeyInfo(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method static createPrivateKeyFromPrivateKeyInfo(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 4
    .parameter "info"

    .prologue
    .line 194
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 196
    .local v0, algOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/RSAUtil;->isRsaOid(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 209
    :goto_0
    return-object v1

    .line 198
    :cond_0
    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_0

    .line 200
    :cond_1
    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_0

    .line 202
    :cond_2
    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JDKDSAPrivateKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_0

    .line 204
    :cond_3
    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_0

    .line 206
    :cond_4
    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 207
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_0

    .line 208
    :cond_5
    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_0

    .line 211
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algorithm identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in key not recognised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createPublicKeyFromDERStream([B)Ljava/security/PublicKey;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-static {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-static {v1}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromPublicKeyInfo(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method static createPublicKeyFromPublicKeyInfo(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 4
    .parameter "info"

    .prologue
    .line 157
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 159
    .local v0, algOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/RSAUtil;->isRsaOid(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCERSAPublicKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JCERSAPublicKey;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 176
    :goto_0
    return-object v1

    .line 161
    :cond_0
    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEDHPublicKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_0

    .line 163
    :cond_1
    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEDHPublicKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_0

    .line 165
    :cond_2
    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_0

    .line 167
    :cond_3
    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JDKDSAPublicKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_0

    .line 169
    :cond_4
    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JDKDSAPublicKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_0

    .line 171
    :cond_5
    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 172
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_0

    .line 173
    :cond_6
    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 174
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_0

    .line 175
    :cond_7
    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 176
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    invoke-direct {v1, p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_0

    .line 178
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algorithm identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in key not recognised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 4
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 54
    instance-of v1, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v1, :cond_0

    .line 56
    :try_start_0
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromDERStream([B)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p1
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown KeySpec type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 4
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 67
    instance-of v1, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v1, :cond_0

    .line 69
    :try_start_0
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p1
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown KeySpec type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 80
    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PKCS#8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 107
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_0

    .line 85
    :cond_1
    const-class v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_2

    .line 86
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 88
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 89
    :cond_2
    const-class v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_3

    .line 90
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 92
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 93
    :cond_3
    const-class v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_4

    .line 95
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 97
    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 100
    :cond_4
    const-class v0, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_5

    .line 101
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 103
    new-instance v0, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 104
    :cond_5
    const-class v0, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_6

    .line 105
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .line 107
    new-instance v0, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 110
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented yet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 114
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCERSAPublicKey;

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCERSAPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    .line 139
    :goto_0
    return-object v0

    .line 116
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;)V

    goto :goto_0

    .line 118
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_2

    .line 119
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>(Ljava/security/interfaces/RSAPrivateKey;)V

    goto :goto_0

    .line 120
    .restart local p1
    :cond_2
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_4

    .line 121
    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->elGamalFactory:Z

    if-eqz v0, :cond_3

    .line 122
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;-><init>(Ljavax/crypto/interfaces/DHPublicKey;)V

    goto :goto_0

    .line 124
    .restart local p1
    :cond_3
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEDHPublicKey;

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Ljavax/crypto/interfaces/DHPublicKey;)V

    goto :goto_0

    .line 126
    .restart local p1
    :cond_4
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_6

    .line 127
    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->elGamalFactory:Z

    if-eqz v0, :cond_5

    .line 128
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;

    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;-><init>(Ljavax/crypto/interfaces/DHPrivateKey;)V

    goto :goto_0

    .line 130
    .restart local p1
    :cond_5
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEDHPrivateKey;

    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Ljavax/crypto/interfaces/DHPrivateKey;)V

    goto :goto_0

    .line 132
    .restart local p1
    :cond_6
    instance-of v0, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_7

    .line 133
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JDKDSAPublicKey;

    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Ljava/security/interfaces/DSAPublicKey;)V

    goto :goto_0

    .line 134
    .restart local p1
    :cond_7
    instance-of v0, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_8

    .line 135
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JDKDSAPrivateKey;

    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Ljava/security/interfaces/DSAPrivateKey;)V

    goto :goto_0

    .line 136
    .restart local p1
    :cond_8
    instance-of v0, p1, Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;

    if-eqz v0, :cond_9

    .line 137
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;

    check-cast p1, Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;-><init>(Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;)V

    goto :goto_0

    .line 138
    .restart local p1
    :cond_9
    instance-of v0, p1, Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;

    if-eqz v0, :cond_a

    .line 139
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;

    check-cast p1, Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;-><init>(Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;)V

    goto :goto_0

    .line 142
    .restart local p1
    :cond_a
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key type unknown"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
