.class Lmyorg/bouncycastle/cms/CMSSignedHelper;
.super Ljava/lang/Object;
.source "CMSSignedHelper.java"


# static fields
.field static final INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

.field private static final digestAlgs:Ljava/util/Map;

.field private static final digestAliases:Ljava/util/Map;

.field private static final encryptionAlgs:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    new-instance v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;

    invoke-direct {v0}, Lmyorg/bouncycastle/cms/CMSSignedHelper;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAliases:Ljava/util/Map;

    .line 56
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA224"

    const-string v2, "DSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA256"

    const-string v2, "DSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA384"

    const-string v2, "DSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA512"

    const-string v2, "DSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA1"

    const-string v2, "DSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md4WithRSA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "MD4"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md4WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "MD4"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md5WithRSA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "MD5"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA1"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "MD2"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "MD4"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "MD5"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA1"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA224"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA256"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA384"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA512"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA1"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA224"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA256"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA384"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA512"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA1"

    const-string v2, "DSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lmyorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA1"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lmyorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA224"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lmyorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA256"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lmyorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA384"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lmyorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA512"

    const-string v2, "ECDSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lmyorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA1"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lmyorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_v1_5_SHA_256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA256"

    const-string v2, "RSA"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lmyorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_PSS_SHA_1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA1"

    const-string v2, "RSAandMGF1"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lmyorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_RSA_PSS_SHA_256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "SHA256"

    const-string v2, "RSAandMGF1"

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    const-string v1, "1.3.36.3.3.1"

    const-string v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedDataGenerator;->ENCRYPTION_RSA_PSS:Ljava/lang/String;

    const-string v2, "RSAandMGF1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GOST3410"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ECGOST3410"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    const-string v1, "1.3.6.1.4.1.5849.1.6.2"

    const-string v2, "ECGOST3410"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    const-string v1, "1.3.6.1.4.1.5849.1.1.5"

    const-string v2, "GOST3410"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA224"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIPEMD128"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIPEMD160"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIPEMD256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GOST3411"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    const-string v1, "1.3.6.1.4.1.5849.1.2.1"

    const-string v2, "GOST3411"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAliases:Ljava/util/Map;

    const-string v1, "SHA1"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SHA-1"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAliases:Ljava/util/Map;

    const-string v1, "SHA224"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SHA-224"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAliases:Ljava/util/Map;

    const-string v1, "SHA256"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SHA-256"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAliases:Ljava/util/Map;

    const-string v1, "SHA384"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SHA-384"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAliases:Ljava/util/Map;

    const-string v1, "SHA512"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SHA-512"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addCRLsFromSet(Ljava/util/List;Lmyorg/bouncycastle/asn1/ASN1Set;Ljava/security/Provider;)V
    .locals 6
    .parameter "crls"
    .parameter "certSet"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 333
    if-eqz p3, :cond_0

    .line 334
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4, p3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 341
    .local v0, cf:Ljava/security/cert/CertificateFactory;
    :goto_0
    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 343
    .local v1, e:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 345
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v4}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 347
    .local v3, obj:Lmyorg/bouncycastle/asn1/DERObject;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 348
    .end local v3           #obj:Lmyorg/bouncycastle/asn1/DERObject;
    :catch_0
    move-exception v2

    .line 349
    .local v2, ex:Ljava/io/IOException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "can\'t re-encode CRL!"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 336
    .end local v0           #cf:Ljava/security/cert/CertificateFactory;
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v2           #ex:Ljava/io/IOException;
    :cond_0
    :try_start_2
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .restart local v0       #cf:Ljava/security/cert/CertificateFactory;
    goto :goto_0

    .line 338
    .end local v0           #cf:Ljava/security/cert/CertificateFactory;
    :catch_1
    move-exception v2

    .line 339
    .local v2, ex:Ljava/security/cert/CertificateException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "can\'t get certificate factory."

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 350
    .end local v2           #ex:Ljava/security/cert/CertificateException;
    .restart local v0       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v1       #e:Ljava/util/Enumeration;
    :catch_2
    move-exception v2

    .line 351
    .local v2, ex:Ljava/security/cert/CRLException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "can\'t re-encode CRL!"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 354
    .end local v2           #ex:Ljava/security/cert/CRLException;
    :cond_1
    return-void
.end method

.method private addCertsFromSet(Ljava/util/List;Lmyorg/bouncycastle/asn1/ASN1Set;Ljava/security/Provider;)V
    .locals 6
    .parameter "certs"
    .parameter "certSet"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 304
    if-eqz p3, :cond_1

    .line 305
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4, p3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 312
    .local v0, cf:Ljava/security/cert/CertificateFactory;
    :goto_0
    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 314
    .local v1, e:Ljava/util/Enumeration;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 316
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v4}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 318
    .local v3, obj:Lmyorg/bouncycastle/asn1/DERObject;
    instance-of v4, v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v4, :cond_0

    .line 319
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 321
    .end local v3           #obj:Lmyorg/bouncycastle/asn1/DERObject;
    :catch_0
    move-exception v2

    .line 322
    .local v2, ex:Ljava/io/IOException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "can\'t re-encode certificate!"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 307
    .end local v0           #cf:Ljava/security/cert/CertificateFactory;
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v2           #ex:Ljava/io/IOException;
    :cond_1
    :try_start_2
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .restart local v0       #cf:Ljava/security/cert/CertificateFactory;
    goto :goto_0

    .line 309
    .end local v0           #cf:Ljava/security/cert/CertificateFactory;
    :catch_1
    move-exception v2

    .line 310
    .local v2, ex:Ljava/security/cert/CertificateException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "can\'t get certificate factory."

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 323
    .end local v2           #ex:Ljava/security/cert/CertificateException;
    .restart local v0       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v1       #e:Ljava/util/Enumeration;
    :catch_2
    move-exception v2

    .line 324
    .restart local v2       #ex:Ljava/security/cert/CertificateException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "can\'t re-encode certificate!"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 327
    .end local v2           #ex:Ljava/security/cert/CertificateException;
    :cond_2
    return-void
.end method

.method private static addEntries(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "alias"
    .parameter "digest"
    .parameter "encryption"

    .prologue
    .line 51
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method private createDigestInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    .locals 1
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 190
    if-eqz p2, :cond_0

    .line 191
    invoke-static {p1, p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method createCertStore(Ljava/lang/String;Ljava/security/Provider;Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/ASN1Set;)Ljava/security/cert/CertStore;
    .locals 4
    .parameter "type"
    .parameter "provider"
    .parameter "certSet"
    .parameter "crlSet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v0, certsAndcrls:Ljava/util/List;
    if-eqz p3, :cond_0

    .line 280
    invoke-direct {p0, v0, p3, p2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addCertsFromSet(Ljava/util/List;Lmyorg/bouncycastle/asn1/ASN1Set;Ljava/security/Provider;)V

    .line 283
    :cond_0
    if-eqz p4, :cond_1

    .line 284
    invoke-direct {p0, v0, p4, p2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->addCRLsFromSet(Ljava/util/List;Lmyorg/bouncycastle/asn1/ASN1Set;Ljava/security/Provider;)V

    .line 288
    :cond_1
    if-eqz p2, :cond_2

    .line 289
    :try_start_0
    new-instance v2, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v2, v0}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v2, p2}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;

    move-result-object v2

    .line 292
    :goto_0
    return-object v2

    :cond_2
    new-instance v2, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v2, v0}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v2}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Lmyorg/bouncycastle/cms/CMSException;

    const-string v3, "can\'t setup the CertStore"

    invoke-direct {v2, v3, v1}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method fixAlgID(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3
    .parameter "algId"

    .prologue
    .line 357
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    sget-object v2, Lmyorg/bouncycastle/asn1/DERNull;->INSTANCE:Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    move-object p1, v0

    .line 361
    .end local p1
    :cond_0
    return-object p1
.end method

.method getDigestAlgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "digestAlgOID"

    .prologue
    .line 135
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAlgs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, algName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 141
    .end local v0           #algName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #algName:Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method getDigestAliases(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "algName"

    .prologue
    .line 145
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->digestAliases:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 147
    .local v0, aliases:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 151
    .end local v0           #aliases:[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #aliases:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method getDigestInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    .locals 4
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->createDigestInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 182
    :goto_0
    return-object v3

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getDigestAliases(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, aliases:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v0

    if-eq v2, v3, :cond_0

    .line 176
    :try_start_1
    aget-object v3, v0, v2

    invoke-direct {p0, v3, p2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->createDigestInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 177
    :catch_1
    move-exception v3

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    :cond_0
    if-eqz p2, :cond_1

    .line 182
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getDigestInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v3

    goto :goto_0

    .line 184
    :cond_1
    throw v1
.end method

.method getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "encryptionAlgOID"

    .prologue
    .line 159
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    .local v0, algName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 165
    .end local v0           #algName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #algName:Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method getSignatureInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .locals 1
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 199
    if-eqz p2, :cond_0

    .line 200
    invoke-static {p1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0
.end method
