.class Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;
.super Ljava/lang/Object;
.source "CMSEnvelopedHelper.java"


# static fields
.field private static final BASE_CIPHER_NAMES:Ljava/util/Map;

.field private static final CIPHER_ALG_NAMES:Ljava/util/Map;

.field static final INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

.field private static final KEYSIZES:Ljava/util/Map;

.field private static final MAC_ALG_NAMES:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc0

    .line 34
    new-instance v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-direct {v0}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    .line 42
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    const-string v2, "DESEDE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    const-string v2, "DESEDE/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    const-string v2, "DESEDEMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const-string v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    const-string v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    const-string v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAlgorithmParams(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;
    .locals 1
    .parameter "algName"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 176
    invoke-static {p1, p2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    goto :goto_0
.end method

.method private createKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    .locals 1
    .parameter "algName"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 193
    if-eqz p2, :cond_0

    .line 194
    invoke-static {p1, p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    goto :goto_0
.end method

.method private createMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    .locals 1
    .parameter "algName"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 222
    if-eqz p2, :cond_0

    .line 223
    invoke-static {p1, p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    goto :goto_0
.end method

.method private getAsymmetricEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "encryptionAlgOID"

    .prologue
    .line 64
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string p1, "RSA/ECB/PKCS1Padding"

    .line 68
    .end local p1
    :cond_0
    return-object p1
.end method

.method private static readRecipientInfo(Ljava/util/List;Lmyorg/bouncycastle/asn1/cms/RecipientInfo;Ljava/io/InputStream;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 7
    .parameter "infos"
    .parameter "info"
    .parameter "contentStream"
    .parameter "encAlg"
    .parameter "macAlg"
    .parameter "authEncAlg"

    .prologue
    .line 300
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->getInfo()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    .line 301
    .local v6, recipInfo:Lmyorg/bouncycastle/asn1/DEREncodable;
    instance-of v0, v6, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    if-eqz v0, :cond_1

    .line 302
    new-instance v0, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;

    move-object v1, v6

    check-cast v1, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;-><init>(Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    instance-of v0, v6, Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    if-eqz v0, :cond_2

    .line 305
    new-instance v0, Lmyorg/bouncycastle/cms/KEKRecipientInformation;

    move-object v1, v6

    check-cast v1, Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/cms/KEKRecipientInformation;-><init>(Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_2
    instance-of v0, v6, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    if-eqz v0, :cond_3

    .line 308
    new-instance v0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;

    move-object v1, v6

    check-cast v1, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;-><init>(Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_3
    instance-of v0, v6, Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Lmyorg/bouncycastle/cms/PasswordRecipientInformation;

    move-object v1, v6

    check-cast v1, Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/cms/PasswordRecipientInformation;-><init>(Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static readRecipientInfos(Ljava/util/Iterator;Ljava/io/InputStream;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/util/List;
    .locals 6
    .parameter "recipientInfoIter"
    .parameter "contentStream"
    .parameter "encAlg"
    .parameter "macAlg"
    .parameter "authEncAlg"

    .prologue
    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, infos:Ljava/util/List;
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    .local v1, info:Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 292
    invoke-static/range {v0 .. v5}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->readRecipientInfo(Ljava/util/List;Lmyorg/bouncycastle/asn1/cms/RecipientInfo;Ljava/io/InputStream;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    goto :goto_0

    .line 294
    .end local v1           #info:Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
    :cond_0
    return-object v0
.end method

.method static readRecipientInfos(Lmyorg/bouncycastle/asn1/ASN1Set;[BLmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/util/List;
    .locals 7
    .parameter "recipientInfos"
    .parameter "contentOctets"
    .parameter "encAlg"
    .parameter "macAlg"
    .parameter "authEncAlg"

    .prologue
    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v0, infos:Ljava/util/List;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v6, v3, :cond_0

    .line 278
    invoke-virtual {p0, v6}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    move-result-object v1

    .line 279
    .local v1, info:Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v2, contentStream:Ljava/io/InputStream;
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 281
    invoke-static/range {v0 .. v5}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->readRecipientInfo(Ljava/util/List;Lmyorg/bouncycastle/asn1/cms/RecipientInfo;Ljava/io/InputStream;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 277
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 283
    .end local v1           #info:Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
    .end local v2           #contentStream:Ljava/io/InputStream;
    :cond_0
    return-object v0
.end method


# virtual methods
.method createAlgorithmParameters(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;
    .locals 3
    .parameter "encryptionOID"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createAlgorithmParams(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 110
    :goto_0
    return-object v2

    .line 106
    :catch_0
    move-exception v1

    .line 108
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    sget-object v2, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .local v0, algName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createAlgorithmParams(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 112
    .end local v0           #algName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 119
    :cond_0
    throw v1
.end method

.method createAsymmetricCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 2
    .parameter "encryptionOid"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getAsymmetricEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getCipherInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0, p1, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getCipherInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    goto :goto_0
.end method

.method createSymmetricKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    .locals 3
    .parameter "encryptionOID"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 96
    :goto_0
    return-object v2

    .line 86
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    sget-object v2, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, algName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 92
    .end local v0           #algName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 95
    :cond_0
    if-eqz p2, :cond_1

    .line 96
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createSymmetricKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    goto :goto_0

    .line 98
    :cond_1
    throw v1
.end method

.method getCipherInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 1
    .parameter "algName"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 166
    if-eqz p2, :cond_0

    .line 167
    invoke-static {p1, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    goto :goto_0
.end method

.method getKeySize(Ljava/lang/String;)I
    .locals 4
    .parameter "oid"

    .prologue
    .line 155
    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 157
    .local v0, keySize:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no keysize for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    .locals 4
    .parameter "macOID"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 240
    :goto_0
    return-object v3

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, alternate:Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 238
    :catch_1
    move-exception v2

    .line 239
    .local v2, ex:Ljava/security/NoSuchAlgorithmException;
    if-eqz p2, :cond_0

    .line 240
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v3

    goto :goto_0

    .line 242
    :cond_0
    throw v1
.end method

.method getRFC3211WrapperName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "oid"

    .prologue
    .line 145
    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, alg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 148
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no name for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RFC3211Wrap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getSymmetricCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 4
    .parameter "encryptionOID"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 203
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getCipherInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 211
    :goto_0
    return-object v3

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    .local v0, alternate:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v0, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getCipherInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 209
    :catch_1
    move-exception v2

    .line 210
    .local v2, ex:Ljava/security/NoSuchAlgorithmException;
    if-eqz p2, :cond_0

    .line 211
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getSymmetricCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v3

    goto :goto_0

    .line 215
    :cond_0
    throw v1
.end method

.method getSymmetricCipherName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "oid"

    .prologue
    .line 267
    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, algName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 271
    .end local v0           #algName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #algName:Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
