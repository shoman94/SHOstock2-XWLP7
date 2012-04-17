.class public Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.super Ljava/security/KeyStoreSpi;
.source "JDKPKCS12KeyStore.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lmyorg/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;,
        Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;,
        Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore3DES;,
        Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore;,
        Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore3DES;,
        Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;,
        Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    }
.end annotation


# static fields
.field private static final bcProvider:Ljava/security/Provider;


# instance fields
.field private certAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private keyAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private localIds:Ljava/util/Hashtable;

.field protected random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 4
    .parameter "provider"
    .parameter "keyAlgorithm"
    .parameter "certAlgorithm"

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 82
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 83
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    .line 84
    new-instance v1, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 85
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    .line 86
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    .line 104
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    .line 143
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 144
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 147
    if-eqz p1, :cond_0

    .line 148
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create cert factory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-object v0
.end method

.method private static calculatePbeMac(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B
    .locals 7
    .parameter "oid"
    .parameter "salt"
    .parameter "itCount"
    .parameter "password"
    .parameter "wrongPkcs12Zero"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1208
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 1209
    .local v2, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1210
    .local v0, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 1211
    .local v4, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v2, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    .line 1212
    .local v1, key:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v1, p4}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 1214
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 1215
    .local v3, mac:Ljavax/crypto/Mac;
    invoke-virtual {v3, v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1216
    invoke-virtual {v3, p5}, Ljavax/crypto/Mac;->update([B)V

    .line 1217
    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    return-object v5
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 4
    .parameter "pubKey"

    .prologue
    .line 159
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 162
    .local v1, info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 163
    .end local v1           #info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "error creating key"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected cryptData(ZLmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .locals 13
    .parameter "forEncryption"
    .parameter "algId"
    .parameter "password"
    .parameter "wrongPKCS12Zero"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, algorithm:Ljava/lang/String;
    new-instance v8, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    check-cast v10, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v10}, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 490
    .local v8, pbeParams:Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 493
    .local v9, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    sget-object v10, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 494
    .local v6, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v10

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-direct {v3, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 496
    .local v3, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    .line 498
    .local v5, key:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 500
    sget-object v10, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 501
    .local v2, cipher:Ljavax/crypto/Cipher;
    if-eqz p1, :cond_0

    const/4 v7, 0x1

    .line 502
    .local v7, mode:I
    :goto_0
    invoke-virtual {v2, v7, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 503
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    return-object v10

    .line 501
    .end local v7           #mode:I
    :cond_0
    const/4 v7, 0x2

    goto :goto_0

    .line 504
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5           #key:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    .end local v6           #keyFact:Ljavax/crypto/SecretKeyFactory;
    :catch_0
    move-exception v4

    .line 505
    .local v4, e:Ljava/lang/Exception;
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception decrypting data - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 5

    .prologue
    .line 173
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 175
    .local v2, tab:Ljava/util/Hashtable;
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 176
    .local v1, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 181
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    .local v0, a:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 184
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 188
    .end local v0           #a:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1
    .parameter "alias"

    .prologue
    .line 192
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 6
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Key;

    .line 202
    .local v2, k:Ljava/security/Key;
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 204
    .local v0, c:Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    .line 205
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    if-eqz v2, :cond_2

    .line 209
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 210
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 211
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 213
    .restart local v0       #c:Ljava/security/cert/Certificate;
    :cond_1
    if-eqz v0, :cond_2

    .line 214
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v1           #id:Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .line 219
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no such entry as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    :cond_3
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .parameter "alias"

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null alias passed to getCertificate."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v2, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 236
    .local v0, c:Ljava/security/cert/Certificate;
    if-nez v0, :cond_1

    .line 237
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 239
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 245
    .end local v1           #id:Ljava/lang/String;
    .restart local v0       #c:Ljava/security/cert/Certificate;
    :cond_1
    :goto_0
    return-object v0

    .line 241
    .restart local v1       #id:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .restart local v0       #c:Ljava/security/cert/Certificate;
    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5
    .parameter "cert"

    .prologue
    .line 249
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 250
    .local v0, c:Ljava/util/Enumeration;
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 252
    .local v1, k:Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 254
    .local v3, tc:Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    .local v2, ta:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    .end local v2           #ta:Ljava/lang/String;
    .end local v3           #tc:Ljava/security/cert/Certificate;
    :goto_0
    return-object v2

    .line 261
    :cond_1
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 262
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 264
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 265
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 266
    .restart local v3       #tc:Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 268
    .restart local v2       #ta:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 273
    .end local v2           #ta:Ljava/lang/String;
    .end local v3           #tc:Ljava/security/cert/Certificate;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 20
    .parameter "alias"

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "null alias passed to getCertificateChain."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 281
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 282
    const/4 v7, 0x0

    .line 358
    :cond_1
    :goto_0
    return-object v7

    .line 285
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 287
    .local v6, c:Ljava/security/cert/Certificate;
    if-eqz v6, :cond_8

    .line 288
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 290
    .local v9, cs:Ljava/util/Vector;
    :goto_1
    if-eqz v6, :cond_7

    move-object/from16 v16, v6

    .line 291
    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 292
    .local v16, x509c:Ljava/security/cert/X509Certificate;
    const/4 v13, 0x0

    .line 294
    .local v13, nextC:Ljava/security/cert/Certificate;
    sget-object v17, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 296
    .local v5, bytes:[B
    if-eqz v5, :cond_3

    .line 298
    :try_start_0
    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v5}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 300
    .local v3, aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v17

    check-cast v17, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    .line 301
    .local v4, authBytes:[B
    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    .end local v3           #aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    invoke-direct {v3, v4}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 303
    .restart local v3       #aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v12, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v17

    check-cast v17, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 305
    .local v12, id:Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v17

    if-eqz v17, :cond_3

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    new-instance v18, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;[B)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #nextC:Ljava/security/cert/Certificate;
    check-cast v13, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v3           #aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v4           #authBytes:[B
    .end local v12           #id:Lmyorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .restart local v13       #nextC:Ljava/security/cert/Certificate;
    :cond_3
    if-nez v13, :cond_5

    .line 318
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    .line 319
    .local v11, i:Ljava/security/Principal;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    .line 321
    .local v14, s:Ljava/security/Principal;
    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 324
    .local v10, e:Ljava/util/Enumeration;
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 326
    .local v8, crt:Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v15

    .line 327
    .local v15, sub:Ljava/security/Principal;
    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 329
    :try_start_1
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    move-object v13, v8

    .line 340
    .end local v8           #crt:Ljava/security/cert/X509Certificate;
    .end local v10           #e:Ljava/util/Enumeration;
    .end local v11           #i:Ljava/security/Principal;
    .end local v14           #s:Ljava/security/Principal;
    .end local v15           #sub:Ljava/security/Principal;
    :cond_5
    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 341
    if-eq v13, v6, :cond_6

    .line 343
    move-object v6, v13

    goto/16 :goto_1

    .line 309
    .end local v13           #nextC:Ljava/security/cert/Certificate;
    :catch_0
    move-exception v10

    .line 310
    .local v10, e:Ljava/io/IOException;
    new-instance v17, Ljava/lang/RuntimeException;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 345
    .end local v10           #e:Ljava/io/IOException;
    .restart local v13       #nextC:Ljava/security/cert/Certificate;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 349
    .end local v5           #bytes:[B
    .end local v13           #nextC:Ljava/security/cert/Certificate;
    .end local v16           #x509c:Ljava/security/cert/X509Certificate;
    :cond_7
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v7, v0, [Ljava/security/cert/Certificate;

    .line 351
    .local v7, certChain:[Ljava/security/cert/Certificate;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v11, v0, :cond_1

    .line 352
    invoke-virtual {v9, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/Certificate;

    aput-object v17, v7, v11

    .line 351
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 358
    .end local v7           #certChain:[Ljava/security/cert/Certificate;
    .end local v9           #cs:Ljava/util/Vector;
    .end local v11           #i:I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 332
    .restart local v5       #bytes:[B
    .restart local v8       #crt:Ljava/security/cert/X509Certificate;
    .restart local v9       #cs:Ljava/util/Vector;
    .local v10, e:Ljava/util/Enumeration;
    .local v11, i:Ljava/security/Principal;
    .restart local v13       #nextC:Ljava/security/cert/Certificate;
    .restart local v14       #s:Ljava/security/Principal;
    .restart local v15       #sub:Ljava/security/Principal;
    .restart local v16       #x509c:Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v17

    goto :goto_2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "alias"

    .prologue
    .line 362
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 2
    .parameter "alias"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 367
    if-nez p1, :cond_0

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .parameter "alias"

    .prologue
    .line 375
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .parameter "alias"

    .prologue
    .line 379
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 54
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    if-nez p1, :cond_1

    .line 866
    :cond_0
    return-void

    .line 515
    :cond_1
    if-nez p2, :cond_2

    .line 516
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 519
    :cond_2
    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 521
    .local v25, bufIn:Ljava/io/BufferedInputStream;
    const/16 v3, 0xa

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 523
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->read()I

    move-result v38

    .line 525
    .local v38, head:I
    const/16 v3, 0x30

    move/from16 v0, v38

    if-eq v0, v3, :cond_3

    .line 526
    new-instance v3, Ljava/io/IOException;

    const-string v6, "stream does not represent a PKCS12 key store"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 529
    :cond_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->reset()V

    .line 531
    new-instance v22, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 532
    .local v22, bIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v22 .. v22}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v45

    check-cast v45, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 533
    .local v45, obj:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v23, Lmyorg/bouncycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v23

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 534
    .local v23, bag:Lmyorg/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual/range {v23 .. v23}, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v40

    .line 535
    .local v40, info:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    .line 536
    .local v30, chain:Ljava/util/Vector;
    const/16 v53, 0x0

    .line 537
    .local v53, unmarkedKey:Z
    const/4 v13, 0x0

    .line 539
    .local v13, wrongPKCS12Zero:Z
    invoke-virtual/range {v23 .. v23}, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lmyorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 541
    invoke-virtual/range {v23 .. v23}, Lmyorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lmyorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v43

    .line 542
    .local v43, mData:Lmyorg/bouncycastle/asn1/pkcs/MacData;
    invoke-virtual/range {v43 .. v43}, Lmyorg/bouncycastle/asn1/pkcs/MacData;->getMac()Lmyorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v33

    .line 543
    .local v33, dInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual/range {v33 .. v33}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v16

    .line 544
    .local v16, algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v43 .. v43}, Lmyorg/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v4

    .line 545
    .local v4, salt:[B
    invoke-virtual/range {v43 .. v43}, Lmyorg/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 547
    .local v5, itCount:I
    invoke-virtual/range {v40 .. v40}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    .line 550
    .local v8, data:[B
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v50

    .line 552
    .local v50, res:[B
    invoke-virtual/range {v33 .. v33}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v34

    .line 554
    .local v34, dig:[B
    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lmyorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_6

    .line 555
    move-object/from16 v0, p2

    array-length v3, v0

    if-lez v3, :cond_4

    .line 556
    new-instance v3, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 570
    .end local v34           #dig:[B
    .end local v50           #res:[B
    :catch_0
    move-exception v35

    .line 571
    .local v35, e:Ljava/io/IOException;
    throw v35

    .line 561
    .end local v35           #e:Ljava/io/IOException;
    .restart local v34       #dig:[B
    .restart local v50       #res:[B
    :cond_4
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    const/4 v7, 0x1

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v50

    .line 563
    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lmyorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    .line 564
    new-instance v3, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 572
    .end local v34           #dig:[B
    .end local v50           #res:[B
    :catch_1
    move-exception v35

    .line 573
    .local v35, e:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 568
    .end local v35           #e:Ljava/lang/Exception;
    .restart local v34       #dig:[B
    .restart local v50       #res:[B
    :cond_5
    const/4 v13, 0x1

    .line 577
    .end local v4           #salt:[B
    .end local v5           #itCount:I
    .end local v8           #data:[B
    .end local v16           #algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v33           #dInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    .end local v34           #dig:[B
    .end local v43           #mData:Lmyorg/bouncycastle/asn1/pkcs/MacData;
    .end local v50           #res:[B
    :cond_6
    new-instance v3, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 578
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    .line 580
    invoke-virtual/range {v40 .. v40}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 581
    new-instance v22, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    .end local v22           #bIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v40 .. v40}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 583
    .restart local v22       #bIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v20, Lmyorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-virtual/range {v22 .. v22}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 584
    .local v20, authSafe:Lmyorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v26

    .line 586
    .local v26, c:[Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;
    const/16 v39, 0x0

    .local v39, i:I
    :goto_0
    move-object/from16 v0, v26

    array-length v3, v0

    move/from16 v0, v39

    if-eq v0, v3, :cond_22

    .line 587
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 588
    new-instance v32, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    aget-object v3, v26, v39

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 590
    .local v32, dIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v32 .. v32}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v51

    check-cast v51, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 592
    .local v51, seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    .local v41, j:I
    :goto_1
    invoke-virtual/range {v51 .. v51}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v41

    if-eq v0, v3, :cond_21

    .line 593
    new-instance v21, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;

    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 594
    .local v21, b:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 595
    new-instance v36, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 597
    .local v36, eIn:Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v36 .. v36}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v6, v1, v13}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v49

    .local v49, privKey:Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 603
    check-cast v24, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 604
    .local v24, bagAttr:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 605
    .local v17, alias:Ljava/lang/String;
    const/16 v42, 0x0

    .line 607
    .local v42, localId:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 608
    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 609
    .local v35, e:Ljava/util/Enumeration;
    :cond_7
    :goto_2
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 610
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 611
    .local v52, sq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 613
    .local v15, aOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 614
    .local v19, attrSet:Lmyorg/bouncycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 616
    .local v18, attr:Lmyorg/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 617
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    .end local v18           #attr:Lmyorg/bouncycastle/asn1/DERObject;
    check-cast v18, Lmyorg/bouncycastle/asn1/DERObject;

    .line 619
    .restart local v18       #attr:Lmyorg/bouncycastle/asn1/DERObject;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    .line 620
    .local v37, existing:Lmyorg/bouncycastle/asn1/DEREncodable;
    if-eqz v37, :cond_8

    .line 623
    invoke-interface/range {v37 .. v37}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 624
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 628
    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 632
    .end local v37           #existing:Lmyorg/bouncycastle/asn1/DEREncodable;
    :cond_9
    sget-object v3, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v15, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 633
    check-cast v18, Lmyorg/bouncycastle/asn1/DERBMPString;

    .end local v18           #attr:Lmyorg/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v18 .. v18}, Lmyorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 635
    .restart local v18       #attr:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_a
    sget-object v3, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v15, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v42, v18

    .line 636
    check-cast v42, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_2

    .line 641
    .end local v15           #aOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v18           #attr:Lmyorg/bouncycastle/asn1/DERObject;
    .end local v19           #attrSet:Lmyorg/bouncycastle/asn1/ASN1Set;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v52           #sq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :cond_b
    if-eqz v42, :cond_d

    .line 642
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 644
    .local v44, name:Ljava/lang/String;
    if-nez v17, :cond_c

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    .end local v17           #alias:Ljava/lang/String;
    .end local v24           #bagAttr:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36           #eIn:Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v42           #localId:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .end local v44           #name:Ljava/lang/String;
    .end local v49           #privKey:Ljava/security/PrivateKey;
    :goto_3
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_1

    .line 647
    .restart local v17       #alias:Ljava/lang/String;
    .restart local v24       #bagAttr:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v36       #eIn:Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v42       #localId:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v44       #name:Ljava/lang/String;
    .restart local v49       #privKey:Ljava/security/PrivateKey;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 650
    .end local v44           #name:Ljava/lang/String;
    :cond_d
    const/16 v53, 0x1

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const-string v6, "unmarked"

    move-object/from16 v0, v49

    invoke-virtual {v3, v6, v0}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 653
    .end local v17           #alias:Ljava/lang/String;
    .end local v24           #bagAttr:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36           #eIn:Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v42           #localId:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .end local v49           #privKey:Ljava/security/PrivateKey;
    :cond_e
    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 654
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 656
    :cond_f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 657
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 660
    .end local v21           #b:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v32           #dIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v41           #j:I
    .end local v51           #seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :cond_10
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 661
    new-instance v31, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;

    aget-object v3, v26, v39

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 662
    .local v31, d:Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v10, 0x0

    invoke-virtual/range {v31 .. v31}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    invoke-virtual/range {v31 .. v31}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v14

    move-object/from16 v9, p0

    move-object/from16 v12, p2

    invoke-virtual/range {v9 .. v14}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v46

    .line 664
    .local v46, octets:[B
    invoke-static/range {v46 .. v46}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v51

    check-cast v51, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 666
    .restart local v51       #seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    .restart local v41       #j:I
    :goto_4
    invoke-virtual/range {v51 .. v51}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v41

    if-eq v0, v3, :cond_21

    .line 667
    new-instance v21, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;

    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 669
    .restart local v21       #b:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 670
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 666
    :goto_5
    add-int/lit8 v41, v41, 0x1

    goto :goto_4

    .line 671
    :cond_11
    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 672
    new-instance v36, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 674
    .restart local v36       #eIn:Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v36 .. v36}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v6, v1, v13}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v49

    .restart local v49       #privKey:Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 680
    check-cast v24, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 681
    .restart local v24       #bagAttr:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 682
    .restart local v17       #alias:Ljava/lang/String;
    const/16 v42, 0x0

    .line 684
    .restart local v42       #localId:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 685
    .restart local v35       #e:Ljava/util/Enumeration;
    :cond_12
    :goto_6
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 686
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 687
    .restart local v52       #sq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 688
    .restart local v15       #aOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 689
    .restart local v19       #attrSet:Lmyorg/bouncycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 691
    .restart local v18       #attr:Lmyorg/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 692
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    .end local v18           #attr:Lmyorg/bouncycastle/asn1/DERObject;
    check-cast v18, Lmyorg/bouncycastle/asn1/DERObject;

    .line 694
    .restart local v18       #attr:Lmyorg/bouncycastle/asn1/DERObject;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    .line 695
    .restart local v37       #existing:Lmyorg/bouncycastle/asn1/DEREncodable;
    if-eqz v37, :cond_13

    .line 697
    invoke-interface/range {v37 .. v37}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 698
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 702
    :cond_13
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 706
    .end local v37           #existing:Lmyorg/bouncycastle/asn1/DEREncodable;
    :cond_14
    sget-object v3, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v15, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 707
    check-cast v18, Lmyorg/bouncycastle/asn1/DERBMPString;

    .end local v18           #attr:Lmyorg/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v18 .. v18}, Lmyorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 709
    .restart local v18       #attr:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_15
    sget-object v3, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v15, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v42, v18

    .line 710
    check-cast v42, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_6

    .line 714
    .end local v15           #aOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v18           #attr:Lmyorg/bouncycastle/asn1/DERObject;
    .end local v19           #attrSet:Lmyorg/bouncycastle/asn1/ASN1Set;
    .end local v52           #sq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :cond_16
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 716
    .restart local v44       #name:Ljava/lang/String;
    if-nez v17, :cond_17

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 719
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 721
    .end local v17           #alias:Ljava/lang/String;
    .end local v24           #bagAttr:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v36           #eIn:Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v42           #localId:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .end local v44           #name:Ljava/lang/String;
    .end local v49           #privKey:Ljava/security/PrivateKey;
    :cond_18
    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyBag:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 722
    new-instance v48, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 724
    .local v48, pIn:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static/range {v48 .. v48}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromPrivateKeyInfo(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v49

    .restart local v49       #privKey:Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 730
    check-cast v24, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 731
    .restart local v24       #bagAttr:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 732
    .restart local v17       #alias:Ljava/lang/String;
    const/16 v42, 0x0

    .line 734
    .restart local v42       #localId:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 735
    .restart local v35       #e:Ljava/util/Enumeration;
    :cond_19
    :goto_7
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 736
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 737
    .restart local v52       #sq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 738
    .restart local v15       #aOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 739
    .restart local v19       #attrSet:Lmyorg/bouncycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 741
    .restart local v18       #attr:Lmyorg/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 742
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    .end local v18           #attr:Lmyorg/bouncycastle/asn1/DERObject;
    check-cast v18, Lmyorg/bouncycastle/asn1/DERObject;

    .line 744
    .restart local v18       #attr:Lmyorg/bouncycastle/asn1/DERObject;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    .line 745
    .restart local v37       #existing:Lmyorg/bouncycastle/asn1/DEREncodable;
    if-eqz v37, :cond_1a

    .line 747
    invoke-interface/range {v37 .. v37}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 748
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 752
    :cond_1a
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 756
    .end local v37           #existing:Lmyorg/bouncycastle/asn1/DEREncodable;
    :cond_1b
    sget-object v3, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v15, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 757
    check-cast v18, Lmyorg/bouncycastle/asn1/DERBMPString;

    .end local v18           #attr:Lmyorg/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v18 .. v18}, Lmyorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 759
    .restart local v18       #attr:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_1c
    sget-object v3, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v15, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v42, v18

    .line 760
    check-cast v42, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_7

    .line 764
    .end local v15           #aOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v18           #attr:Lmyorg/bouncycastle/asn1/DERObject;
    .end local v19           #attrSet:Lmyorg/bouncycastle/asn1/ASN1Set;
    .end local v52           #sq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :cond_1d
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 766
    .restart local v44       #name:Ljava/lang/String;
    if-nez v17, :cond_1e

    .line 767
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 769
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 772
    .end local v17           #alias:Ljava/lang/String;
    .end local v24           #bagAttr:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v42           #localId:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .end local v44           #name:Ljava/lang/String;
    .end local v48           #pIn:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v49           #privKey:Ljava/security/PrivateKey;
    :cond_1f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in encryptedData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 773
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 777
    .end local v21           #b:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v31           #d:Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v41           #j:I
    .end local v46           #octets:[B
    .end local v51           #seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :cond_20
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v26, v39

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 778
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v26, v39

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-static {v7}, Lmyorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 586
    :cond_21
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    .line 783
    .end local v20           #authSafe:Lmyorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v26           #c:[Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v39           #i:I
    :cond_22
    new-instance v3, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 784
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    .line 785
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    .line 787
    const/16 v39, 0x0

    .restart local v39       #i:I
    :goto_8
    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v39

    if-eq v0, v3, :cond_0

    .line 788
    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;

    .line 789
    .restart local v21       #b:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    new-instance v28, Lmyorg/bouncycastle/asn1/pkcs/CertBag;

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 791
    .local v28, cb:Lmyorg/bouncycastle/asn1/pkcs/CertBag;
    invoke-virtual/range {v28 .. v28}, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 792
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported certificate type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 798
    :cond_23
    :try_start_2
    new-instance v27, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v28 .. v28}, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 800
    .local v27, cIn:Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v29

    .line 808
    .local v29, cert:Ljava/security/cert/Certificate;
    const/16 v42, 0x0

    .line 809
    .restart local v42       #localId:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    const/16 v17, 0x0

    .line 811
    .restart local v17       #alias:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 812
    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 813
    .restart local v35       #e:Ljava/util/Enumeration;
    :cond_24
    :goto_9
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 814
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 815
    .restart local v52       #sq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v47

    check-cast v47, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 816
    .local v47, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Set;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    check-cast v18, Lmyorg/bouncycastle/asn1/DERObject;

    .line 817
    .restart local v18       #attr:Lmyorg/bouncycastle/asn1/DERObject;
    const/16 v24, 0x0

    .line 819
    .restart local v24       #bagAttr:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    move-object/from16 v0, v29

    instance-of v3, v0, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_26

    move-object/from16 v24, v29

    .line 820
    check-cast v24, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 822
    move-object/from16 v0, v24

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    .line 823
    .restart local v37       #existing:Lmyorg/bouncycastle/asn1/DEREncodable;
    if-eqz v37, :cond_25

    .line 825
    invoke-interface/range {v37 .. v37}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 826
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 801
    .end local v17           #alias:Ljava/lang/String;
    .end local v18           #attr:Lmyorg/bouncycastle/asn1/DERObject;
    .end local v24           #bagAttr:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v27           #cIn:Ljava/io/ByteArrayInputStream;
    .end local v29           #cert:Ljava/security/cert/Certificate;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v37           #existing:Lmyorg/bouncycastle/asn1/DEREncodable;
    .end local v42           #localId:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .end local v47           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v52           #sq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v35

    .line 802
    .local v35, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 830
    .restart local v17       #alias:Ljava/lang/String;
    .restart local v18       #attr:Lmyorg/bouncycastle/asn1/DERObject;
    .restart local v24       #bagAttr:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v27       #cIn:Ljava/io/ByteArrayInputStream;
    .restart local v29       #cert:Ljava/security/cert/Certificate;
    .local v35, e:Ljava/util/Enumeration;
    .restart local v37       #existing:Lmyorg/bouncycastle/asn1/DEREncodable;
    .restart local v42       #localId:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v47       #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v52       #sq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :cond_25
    move-object/from16 v0, v24

    move-object/from16 v1, v47

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 834
    .end local v37           #existing:Lmyorg/bouncycastle/asn1/DEREncodable;
    :cond_26
    sget-object v3, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 835
    check-cast v18, Lmyorg/bouncycastle/asn1/DERBMPString;

    .end local v18           #attr:Lmyorg/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v18 .. v18}, Lmyorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_9

    .line 836
    .restart local v18       #attr:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_27
    sget-object v3, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move-object/from16 v42, v18

    .line 837
    check-cast v42, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    goto/16 :goto_9

    .line 842
    .end local v18           #attr:Lmyorg/bouncycastle/asn1/DERObject;
    .end local v24           #bagAttr:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v47           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v52           #sq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    move-object/from16 v0, v29

    invoke-virtual {v3, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    if-eqz v53, :cond_2a

    .line 845
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 846
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 849
    .restart local v44       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const-string v7, "unmarked"

    invoke-virtual {v6, v7}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v3, v0, v6}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 787
    .end local v44           #name:Ljava/lang/String;
    :cond_29
    :goto_a
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_8

    .line 856
    :cond_2a
    if-eqz v42, :cond_2b

    .line 857
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 859
    .restart local v44       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    .end local v44           #name:Ljava/lang/String;
    :cond_2b
    if-eqz v17, :cond_29

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 3
    .parameter "alias"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is a key entry with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 4
    .parameter "alias"
    .parameter "key"
    .parameter "password"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 398
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    if-nez p4, :cond_0

    .line 399
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "no certificate chain for private key"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineDeleteEntry(Ljava/lang/String;)V

    .line 406
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1, p2}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, p1, v2}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p4

    if-eq v0, v1, :cond_2

    .line 410
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_2
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .parameter "alias"
    .parameter "key"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 5

    .prologue
    .line 415
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 417
    .local v2, tab:Ljava/util/Hashtable;
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 418
    .local v1, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 422
    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 423
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 424
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    .local v0, a:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 426
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 430
    .end local v0           #a:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v3

    return v3
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 61
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 869
    if-nez p2, :cond_0

    .line 870
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 876
    :cond_0
    new-instance v47, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v47 .. v47}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 878
    .local v47, keyS:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v50

    .line 880
    .local v50, ks:Ljava/util/Enumeration;
    :goto_0
    invoke-interface/range {v50 .. v50}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 881
    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v45, v0

    .line 883
    .local v45, kSalt:[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 885
    invoke-interface/range {v50 .. v50}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 886
    .local v53, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/security/PrivateKey;

    .line 887
    .local v58, privKey:Ljava/security/PrivateKey;
    new-instance v44, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v4, 0x400

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v4}, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 888
    .local v44, kParams:Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v44

    move-object/from16 v3, p2

    invoke-virtual {v0, v4, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v41

    .line 889
    .local v41, kBytes:[B
    new-instance v39, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v44 .. v44}, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-direct {v0, v4, v5}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 891
    .local v39, kAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v42, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 893
    .local v42, kInfo:Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    const/16 v17, 0x0

    .line 894
    .local v17, attrSet:Z
    new-instance v43, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v43 .. v43}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 896
    .local v43, kName:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v58

    instance-of v4, v0, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_4

    move-object/from16 v20, v58

    .line 897
    check-cast v20, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 901
    .local v20, bagAttrs:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v54

    check-cast v54, Lmyorg/bouncycastle/asn1/DERBMPString;

    .line 902
    .local v54, nm:Lmyorg/bouncycastle/asn1/DERBMPString;
    if-eqz v54, :cond_1

    invoke-virtual/range {v54 .. v54}, Lmyorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 903
    :cond_1
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lmyorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lmyorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 909
    :cond_2
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    if-nez v4, :cond_3

    .line 910
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v32

    .line 912
    .local v32, ct:Ljava/security/cert/Certificate;
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 916
    .end local v32           #ct:Ljava/security/cert/Certificate;
    :cond_3
    invoke-interface/range {v20 .. v20}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 918
    .local v35, e:Ljava/util/Enumeration;
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 919
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 920
    .local v55, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v46, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 922
    .local v46, kSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 923
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v20

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 925
    const/16 v17, 0x1

    .line 927
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1

    .line 931
    .end local v20           #bagAttrs:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v46           #kSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54           #nm:Lmyorg/bouncycastle/asn1/DERBMPString;
    .end local v55           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_4
    if-nez v17, :cond_5

    .line 935
    new-instance v46, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 936
    .restart local v46       #kSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v32

    .line 938
    .restart local v32       #ct:Ljava/security/cert/Certificate;
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 939
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 941
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 943
    new-instance v46, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v46           #kSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v46 .. v46}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 945
    .restart local v46       #kSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 946
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSet;

    new-instance v5, Lmyorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lmyorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 948
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 951
    .end local v32           #ct:Ljava/security/cert/Certificate;
    .end local v46           #kSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_5
    new-instance v40, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v42 .. v42}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lmyorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v43

    invoke-direct {v7, v0}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v40

    invoke-direct {v0, v4, v5, v7}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObject;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    .line 952
    .local v40, kBag:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_0

    .line 955
    .end local v17           #attrSet:Z
    .end local v39           #kAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v40           #kBag:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v41           #kBytes:[B
    .end local v42           #kInfo:Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v43           #kName:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v44           #kParams:Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v45           #kSalt:[B
    .end local v53           #name:Ljava/lang/String;
    .end local v58           #privKey:Ljava/security/PrivateKey;
    :cond_6
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v47

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v48

    .line 956
    .local v48, keySEncoded:[B
    new-instance v49, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    .line 961
    .local v49, keyString:Lmyorg/bouncycastle/asn1/BERConstructedOctetString;
    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v26, v0

    .line 963
    .local v26, cSalt:[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 965
    new-instance v30, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v30 .. v30}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 966
    .local v30, certSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v25, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v4, 0x400

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 967
    .local v25, cParams:Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v6, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v25 .. v25}, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 968
    .local v6, cAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v34, Ljava/util/Hashtable;

    invoke-direct/range {v34 .. v34}, Ljava/util/Hashtable;-><init>()V

    .line 970
    .local v34, doneCerts:Ljava/util/Hashtable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 971
    .local v31, cs:Ljava/util/Enumeration;
    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 973
    :try_start_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 974
    .restart local v53       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v27

    .line 975
    .local v27, cert:Ljava/security/cert/Certificate;
    const/16 v22, 0x0

    .line 976
    .local v22, cAttrSet:Z
    new-instance v23, Lmyorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lmyorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObject;)V

    .line 977
    .local v23, cBag:Lmyorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v36, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 979
    .local v36, fName:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_a

    .line 980
    move-object/from16 v0, v27

    check-cast v0, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v20, v0

    .line 984
    .restart local v20       #bagAttrs:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v54

    check-cast v54, Lmyorg/bouncycastle/asn1/DERBMPString;

    .line 986
    .restart local v54       #nm:Lmyorg/bouncycastle/asn1/DERBMPString;
    if-eqz v54, :cond_7

    invoke-virtual/range {v54 .. v54}, Lmyorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 987
    :cond_7
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lmyorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lmyorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 993
    :cond_8
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    if-nez v4, :cond_9

    .line 994
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 998
    :cond_9
    invoke-interface/range {v20 .. v20}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1000
    .restart local v35       #e:Ljava/util/Enumeration;
    :goto_3
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1001
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1002
    .restart local v55       #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v37, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1004
    .local v37, fSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1005
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v20

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1006
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1008
    const/16 v22, 0x1

    .line 1009
    goto :goto_3

    .line 1012
    .end local v20           #bagAttrs:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v37           #fSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54           #nm:Lmyorg/bouncycastle/asn1/DERBMPString;
    .end local v55           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_a
    if-nez v22, :cond_b

    .line 1013
    new-instance v37, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1015
    .restart local v37       #fSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1016
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1017
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1019
    new-instance v37, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v37           #fSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1021
    .restart local v37       #fSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1022
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSet;

    new-instance v5, Lmyorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lmyorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1024
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1027
    .end local v37           #fSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_b
    new-instance v60, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lmyorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObject;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    .line 1029
    .local v60, sBag:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1031
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1032
    .end local v22           #cAttrSet:Z
    .end local v23           #cBag:Lmyorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v27           #cert:Ljava/security/cert/Certificate;
    .end local v36           #fName:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v53           #name:Ljava/lang/String;
    .end local v60           #sBag:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    :catch_0
    move-exception v35

    .line 1033
    .local v35, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1037
    .end local v35           #e:Ljava/security/cert/CertificateEncodingException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1038
    :cond_d
    :goto_4
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1040
    :try_start_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1041
    .local v29, certId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/Certificate;

    .line 1042
    .restart local v27       #cert:Ljava/security/cert/Certificate;
    const/16 v22, 0x0

    .line 1044
    .restart local v22       #cAttrSet:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    .line 1048
    new-instance v23, Lmyorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lmyorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObject;)V

    .line 1049
    .restart local v23       #cBag:Lmyorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v36, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1051
    .restart local v36       #fName:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_11

    .line 1052
    move-object/from16 v0, v27

    check-cast v0, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v20, v0

    .line 1056
    .restart local v20       #bagAttrs:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v54

    check-cast v54, Lmyorg/bouncycastle/asn1/DERBMPString;

    .line 1058
    .restart local v54       #nm:Lmyorg/bouncycastle/asn1/DERBMPString;
    if-eqz v54, :cond_e

    invoke-virtual/range {v54 .. v54}, Lmyorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1059
    :cond_e
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lmyorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lmyorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1062
    :cond_f
    invoke-interface/range {v20 .. v20}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1064
    .local v35, e:Ljava/util/Enumeration;
    :cond_10
    :goto_5
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1065
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1073
    .restart local v55       #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    sget-object v4, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1077
    new-instance v37, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1079
    .restart local v37       #fSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1080
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v20

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1081
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1083
    const/16 v22, 0x1

    .line 1084
    goto :goto_5

    .line 1087
    .end local v20           #bagAttrs:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v37           #fSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54           #nm:Lmyorg/bouncycastle/asn1/DERBMPString;
    .end local v55           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_11
    if-nez v22, :cond_12

    .line 1088
    new-instance v37, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1090
    .restart local v37       #fSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1091
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSet;

    new-instance v5, Lmyorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lmyorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1093
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1096
    .end local v37           #fSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_12
    new-instance v60, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lmyorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObject;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    .line 1098
    .restart local v60       #sBag:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1100
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 1101
    .end local v22           #cAttrSet:Z
    .end local v23           #cBag:Lmyorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v27           #cert:Ljava/security/cert/Certificate;
    .end local v29           #certId:Ljava/lang/String;
    .end local v36           #fName:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v60           #sBag:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    :catch_1
    move-exception v35

    .line 1102
    .local v35, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1106
    .end local v35           #e:Ljava/security/cert/CertificateEncodingException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1107
    :cond_14
    :goto_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1109
    :try_start_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    .line 1110
    .local v29, certId:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/Certificate;

    .line 1112
    .restart local v27       #cert:Ljava/security/cert/Certificate;
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_14

    .line 1116
    new-instance v23, Lmyorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lmyorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObject;)V

    .line 1117
    .restart local v23       #cBag:Lmyorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v36, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1119
    .restart local v36       #fName:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_16

    .line 1120
    move-object/from16 v0, v27

    check-cast v0, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v20, v0

    .line 1121
    .restart local v20       #bagAttrs:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface/range {v20 .. v20}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1123
    .local v35, e:Ljava/util/Enumeration;
    :cond_15
    :goto_7
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1124
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1132
    .restart local v55       #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    sget-object v4, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1136
    new-instance v37, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1138
    .restart local v37       #fSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1139
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v20

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1140
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 1147
    .end local v20           #bagAttrs:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v23           #cBag:Lmyorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v27           #cert:Ljava/security/cert/Certificate;
    .end local v29           #certId:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v36           #fName:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v37           #fSeq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v55           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :catch_2
    move-exception v35

    .line 1148
    .local v35, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1144
    .end local v35           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v23       #cBag:Lmyorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v27       #cert:Ljava/security/cert/Certificate;
    .restart local v29       #certId:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .restart local v36       #fName:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_16
    :try_start_3
    new-instance v60, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lmyorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObject;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    .line 1146
    .restart local v60       #sBag:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    .line 1152
    .end local v23           #cBag:Lmyorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v27           #cert:Ljava/security/cert/Certificate;
    .end local v29           #certId:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .end local v36           #fName:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v60           #sBag:Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
    :cond_17
    new-instance v4, Lmyorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v9

    .line 1153
    .local v9, certSeqEncoded:[B
    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v28

    .line 1154
    .local v28, certBytes:[B
    new-instance v24, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v28

    invoke-direct {v5, v0}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v6, v5}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1157
    .local v24, cInfo:Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v4, 0x2

    new-array v0, v4, [Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-object/from16 v38, v0

    const/4 v4, 0x0

    new-instance v5, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v49

    invoke-direct {v5, v7, v0}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    aput-object v5, v38, v4

    const/4 v4, 0x1

    new-instance v5, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v24 .. v24}, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    aput-object v5, v38, v4

    .line 1162
    .local v38, info:[Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v18, Lmyorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;)V

    .line 1164
    .local v18, auth:Lmyorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1165
    .local v19, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v21, Lmyorg/bouncycastle/asn1/BEROutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1167
    .local v21, berOut:Lmyorg/bouncycastle/asn1/BEROutputStream;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/BEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1169
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v57

    .line 1171
    .local v57, pkg:[B
    new-instance v52, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v57

    invoke-direct {v5, v0}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v52

    invoke-direct {v0, v4, v5}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1176
    .local v52, mainInfo:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;
    const/16 v4, 0x14

    new-array v11, v4, [B

    .line 1177
    .local v11, mSalt:[B
    const/16 v12, 0x400

    .line 1179
    .local v12, itCount:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1181
    invoke-virtual/range {v52 .. v52}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v15

    .line 1186
    .local v15, data:[B
    :try_start_4
    sget-object v10, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v14, 0x0

    move-object/from16 v13, p2

    invoke-static/range {v10 .. v15}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v59

    .line 1188
    .local v59, res:[B
    new-instance v16, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v5, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v5}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 1189
    .local v16, algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v33, Lmyorg/bouncycastle/asn1/x509/DigestInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1191
    .local v33, dInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    new-instance v51, Lmyorg/bouncycastle/asn1/pkcs/MacData;

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v11, v12}, Lmyorg/bouncycastle/asn1/pkcs/MacData;-><init>(Lmyorg/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1199
    .local v51, mData:Lmyorg/bouncycastle/asn1/pkcs/MacData;
    new-instance v56, Lmyorg/bouncycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;Lmyorg/bouncycastle/asn1/pkcs/MacData;)V

    .line 1201
    .local v56, pfx:Lmyorg/bouncycastle/asn1/pkcs/Pfx;
    new-instance v21, Lmyorg/bouncycastle/asn1/BEROutputStream;

    .end local v21           #berOut:Lmyorg/bouncycastle/asn1/BEROutputStream;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1203
    .restart local v21       #berOut:Lmyorg/bouncycastle/asn1/BEROutputStream;
    move-object/from16 v0, v21

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/BEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1204
    return-void

    .line 1192
    .end local v16           #algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v33           #dInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    .end local v51           #mData:Lmyorg/bouncycastle/asn1/pkcs/MacData;
    .end local v56           #pfx:Lmyorg/bouncycastle/asn1/pkcs/Pfx;
    .end local v59           #res:[B
    :catch_3
    move-exception v35

    .line 1193
    .local v35, e:Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected unwrapKey(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .locals 13
    .parameter "algId"
    .parameter "data"
    .parameter "password"
    .parameter "wrongPKCS12Zero"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, algorithm:Ljava/lang/String;
    new-instance v8, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    check-cast v10, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v10}, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 438
    .local v8, pbeParams:Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 442
    .local v9, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    sget-object v10, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 443
    .local v6, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v10

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-direct {v3, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 446
    .local v3, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 448
    .local v5, k:Ljavax/crypto/SecretKey;
    move-object v0, v5

    check-cast v0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    move-object v10, v0

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 450
    sget-object v10, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 452
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v10, 0x4

    invoke-virtual {v2, v10, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 456
    const-string v10, ""

    const/4 v11, 0x2

    invoke-virtual {v2, p2, v10, v11}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v7

    check-cast v7, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .local v7, out:Ljava/security/PrivateKey;
    return-object v7

    .line 457
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5           #k:Ljavax/crypto/SecretKey;
    .end local v6           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v7           #out:Ljava/security/PrivateKey;
    :catch_0
    move-exception v4

    .line 458
    .local v4, e:Ljava/lang/Exception;
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception unwrapping private key - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method protected wrapKey(Ljava/lang/String;Ljava/security/Key;Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .locals 9
    .parameter "algorithm"
    .parameter "key"
    .parameter "pbeParams"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 470
    .local v5, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 471
    .local v3, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    invoke-virtual {p3}, Lmyorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v1, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 474
    .local v1, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    sget-object v6, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 476
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x3

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 478
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 483
    .local v4, out:[B
    return-object v4

    .line 479
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v4           #out:[B
    :catch_0
    move-exception v2

    .line 480
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception encrypting data - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
