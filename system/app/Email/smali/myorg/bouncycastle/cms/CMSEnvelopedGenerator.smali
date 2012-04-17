.class public Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;
.super Ljava/lang/Object;
.source "CMSEnvelopedGenerator.java"


# static fields
.field public static final AES128_CBC:Ljava/lang/String;

.field public static final AES128_WRAP:Ljava/lang/String;

.field public static final AES192_CBC:Ljava/lang/String;

.field public static final AES192_WRAP:Ljava/lang/String;

.field public static final AES256_CBC:Ljava/lang/String;

.field public static final AES256_WRAP:Ljava/lang/String;

.field public static final CAMELLIA128_CBC:Ljava/lang/String;

.field public static final CAMELLIA128_WRAP:Ljava/lang/String;

.field public static final CAMELLIA192_CBC:Ljava/lang/String;

.field public static final CAMELLIA192_WRAP:Ljava/lang/String;

.field public static final CAMELLIA256_CBC:Ljava/lang/String;

.field public static final CAMELLIA256_WRAP:Ljava/lang/String;

.field public static final DES_EDE3_CBC:Ljava/lang/String;

.field public static final DES_EDE3_WRAP:Ljava/lang/String;

.field public static final ECDH_SHA1KDF:Ljava/lang/String;

.field public static final ECMQV_SHA1KDF:Ljava/lang/String;

.field public static final RC2_CBC:Ljava/lang/String;

.field public static final SEED_CBC:Ljava/lang/String;

.field public static final SEED_WRAP:Ljava/lang/String;


# instance fields
.field final rand:Ljava/security/SecureRandom;

.field final recipientInfoGenerators:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    .line 62
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->RC2_CBC:Ljava/lang/String;

    .line 65
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    .line 66
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    .line 67
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    .line 68
    sget-object v0, Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->CAMELLIA128_CBC:Ljava/lang/String;

    .line 69
    sget-object v0, Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->CAMELLIA192_CBC:Ljava/lang/String;

    .line 70
    sget-object v0, Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->CAMELLIA256_CBC:Ljava/lang/String;

    .line 71
    sget-object v0, Lmyorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->SEED_CBC:Ljava/lang/String;

    .line 73
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_WRAP:Ljava/lang/String;

    .line 74
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES128_WRAP:Ljava/lang/String;

    .line 75
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES192_WRAP:Ljava/lang/String;

    .line 76
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES256_WRAP:Ljava/lang/String;

    .line 77
    sget-object v0, Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->CAMELLIA128_WRAP:Ljava/lang/String;

    .line 78
    sget-object v0, Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->CAMELLIA192_WRAP:Ljava/lang/String;

    .line 79
    sget-object v0, Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->CAMELLIA256_WRAP:Ljava/lang/String;

    .line 80
    sget-object v0, Lmyorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_npki_app_cmsSeed_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->SEED_WRAP:Ljava/lang/String;

    .line 82
    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_stdDH_sha1kdf_scheme:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->ECDH_SHA1KDF:Ljava/lang/String;

    .line 84
    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->mqvSinglePass_sha1kdf_scheme:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->ECMQV_SHA1KDF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>(Ljava/security/SecureRandom;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1
    .parameter "rand"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->recipientInfoGenerators:Ljava/util/List;

    .line 103
    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->rand:Ljava/security/SecureRandom;

    .line 104
    return-void
.end method


# virtual methods
.method public addKeyTransRecipient(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>()V

    .line 115
    .local v0, ktrig:Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;
    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->setRecipientCert(Ljava/security/cert/X509Certificate;)V

    .line 117
    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method protected generateParameters(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;
    .locals 6
    .parameter "encryptionOID"
    .parameter "encKey"
    .parameter "encProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 268
    :try_start_0
    invoke-static {p1, p3}, Ljava/security/AlgorithmParameterGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v2

    .line 271
    .local v2, pGen:Ljava/security/AlgorithmParameterGenerator;
    sget-object v3, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->RC2_CBC:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    const/16 v3, 0x8

    new-array v1, v3, [B

    .line 274
    .local v1, iv:[B
    iget-object v3, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    :try_start_1
    new-instance v3, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v4, v1}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    iget-object v4, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v2, v3, v4}, Ljava/security/AlgorithmParameterGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    .end local v1           #iv:[B
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/security/AlgorithmParameterGenerator;->generateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 285
    .end local v2           #pGen:Ljava/security/AlgorithmParameterGenerator;
    :goto_0
    return-object v3

    .line 278
    .restart local v1       #iv:[B
    .restart local v2       #pGen:Ljava/security/AlgorithmParameterGenerator;
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Lmyorg/bouncycastle/cms/CMSException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parameters generation error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    .line 284
    .end local v0           #e:Ljava/security/InvalidAlgorithmParameterException;
    .end local v1           #iv:[B
    .end local v2           #pGen:Ljava/security/AlgorithmParameterGenerator;
    :catch_1
    move-exception v0

    .line 285
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getAlgorithmIdentifier(Ljava/lang/String;Ljava/security/AlgorithmParameters;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3
    .parameter "encryptionOID"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    if-eqz p2, :cond_0

    .line 257
    const-string v1, "ASN.1"

    invoke-virtual {p2, v1}, Ljava/security/AlgorithmParameters;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    .line 262
    .local v0, asn1Params:Lmyorg/bouncycastle/asn1/DEREncodable;
    :goto_0
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    return-object v1

    .line 259
    .end local v0           #asn1Params:Lmyorg/bouncycastle/asn1/DEREncodable;
    :cond_0
    sget-object v0, Lmyorg/bouncycastle/asn1/DERNull;->INSTANCE:Lmyorg/bouncycastle/asn1/DERNull;

    .restart local v0       #asn1Params:Lmyorg/bouncycastle/asn1/DEREncodable;
    goto :goto_0
.end method
