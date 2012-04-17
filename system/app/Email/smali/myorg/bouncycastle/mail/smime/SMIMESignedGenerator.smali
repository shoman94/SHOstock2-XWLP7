.class public Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;
.super Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;
.source "SMIMESignedGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;,
        Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;
    }
.end annotation


# static fields
.field public static final DIGEST_GOST3411:Ljava/lang/String;

.field public static final DIGEST_MD5:Ljava/lang/String;

.field public static final DIGEST_RIPEMD128:Ljava/lang/String;

.field public static final DIGEST_RIPEMD160:Ljava/lang/String;

.field public static final DIGEST_RIPEMD256:Ljava/lang/String;

.field public static final DIGEST_SHA1:Ljava/lang/String;

.field public static final DIGEST_SHA224:Ljava/lang/String;

.field public static final DIGEST_SHA256:Ljava/lang/String;

.field public static final DIGEST_SHA384:Ljava/lang/String;

.field public static final DIGEST_SHA512:Ljava/lang/String;

.field public static final ENCRYPTION_DSA:Ljava/lang/String;

.field public static final ENCRYPTION_ECDSA:Ljava/lang/String;

.field public static final ENCRYPTION_ECGOST3410:Ljava/lang/String;

.field public static final ENCRYPTION_GOST3410:Ljava/lang/String;

.field public static final ENCRYPTION_RSA:Ljava/lang/String;

.field public static final ENCRYPTION_RSA_PSS:Ljava/lang/String;


# instance fields
.field private _attributeCerts:Ljava/util/List;

.field private _certStores:Ljava/util/List;

.field private final _defaultContentTransferEncoding:Ljava/lang/String;

.field private _digests:Ljava/util/Map;

.field private _oldSigners:Ljava/util/List;

.field private _signers:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    .line 70
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_MD5:Ljava/lang/String;

    .line 72
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA224:Ljava/lang/String;

    .line 74
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA256:Ljava/lang/String;

    .line 76
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA384:Ljava/lang/String;

    .line 78
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA512:Ljava/lang/String;

    .line 80
    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_GOST3411:Ljava/lang/String;

    .line 82
    sget-object v0, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_RIPEMD128:Ljava/lang/String;

    .line 84
    sget-object v0, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_RIPEMD160:Ljava/lang/String;

    .line 86
    sget-object v0, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_RIPEMD256:Ljava/lang/String;

    .line 88
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->ENCRYPTION_RSA:Ljava/lang/String;

    .line 90
    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->ENCRYPTION_DSA:Ljava/lang/String;

    .line 92
    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->ENCRYPTION_ECDSA:Ljava/lang/String;

    .line 94
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->ENCRYPTION_RSA_PSS:Ljava/lang/String;

    .line 96
    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->ENCRYPTION_GOST3410:Ljava/lang/String;

    .line 99
    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->ENCRYPTION_ECGOST3410:Ljava/lang/String;

    .line 121
    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->addCommands(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;

    move-result-object v0

    invoke-static {v0}, Ljavax/activation/CommandMap;->setDefaultCommandMap(Ljavax/activation/CommandMap;)V

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_certStores:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_signers:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_oldSigners:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_attributeCerts:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_digests:Ljava/util/Map;

    .line 140
    const-string v0, "7bit"

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_defaultContentTransferEncoding:Ljava/lang/String;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_certStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_attributeCerts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_signers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_oldSigners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_defaultContentTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->addCommands(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_digests:Ljava/util/Map;

    return-object p1
.end method

.method private static addCommands(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;
    .locals 2
    .parameter "cm"

    .prologue
    .line 125
    move-object v0, p0

    check-cast v0, Ljavax/activation/MailcapCommandMap;

    .line 127
    .local v0, mc:Ljavax/activation/MailcapCommandMap;
    const-string v1, "application/pkcs7-signature;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.pkcs7_signature"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 128
    const-string v1, "application/pkcs7-mime;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.pkcs7_mime"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 129
    const-string v1, "application/x-pkcs7-signature;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.x_pkcs7_signature"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 130
    const-string v1, "application/x-pkcs7-mime;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.x_pkcs7_mime"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 131
    const-string v1, "multipart/signed;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.multipart_signed"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 133
    return-object v0
.end method

.method private addHashHeader(Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 8
    .parameter "header"
    .parameter "signers"

    .prologue
    const/4 v7, 0x1

    .line 262
    const/4 v1, 0x0

    .line 267
    .local v1, count:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 268
    .local v3, it:Ljava/util/Iterator;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 270
    .local v4, micAlgs:Ljava/util/Set;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 271
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 274
    .local v5, signer:Ljava/lang/Object;
    instance-of v6, v5, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;

    if-eqz v6, :cond_0

    .line 275
    check-cast v5, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;

    .end local v5           #signer:Ljava/lang/Object;
    invoke-virtual {v5}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getDigestOID()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, digestOID:Ljava/lang/String;
    :goto_1
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 281
    const-string v6, "sha1"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    .end local v2           #digestOID:Ljava/lang/String;
    .restart local v5       #signer:Ljava/lang/Object;
    :cond_0
    check-cast v5, Lmyorg/bouncycastle/cms/SignerInformation;

    .end local v5           #signer:Ljava/lang/Object;
    invoke-virtual {v5}, Lmyorg/bouncycastle/cms/SignerInformation;->getDigestAlgOID()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #digestOID:Ljava/lang/String;
    goto :goto_1

    .line 282
    :cond_1
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_MD5:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 283
    const-string v6, "md5"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_2
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA224:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 285
    const-string v6, "sha224"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_3
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA256:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 287
    const-string v6, "sha256"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_4
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA384:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 289
    const-string v6, "sha384"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_5
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA512:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 291
    const-string v6, "sha512"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_6
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_GOST3411:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 293
    const-string v6, "gostr3411-94"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :cond_7
    const-string v6, "unknown"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 299
    .end local v2           #digestOID:Ljava/lang/String;
    :cond_8
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 301
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 302
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    .local v0, alg:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 305
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v6, v7, :cond_9

    .line 306
    const-string v6, "; micalg=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    add-int/lit8 v1, v1, 0x1

    .line 317
    goto :goto_2

    .line 308
    :cond_9
    const-string v6, "; micalg="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 311
    :cond_a
    const/16 v6, 0x2c

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 319
    .end local v0           #alg:Ljava/lang/String;
    :cond_b
    if-eqz v1, :cond_c

    .line 320
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v6, v7, :cond_c

    .line 321
    const/16 v6, 0x22

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 324
    :cond_c
    return-void
.end method

.method private make(Ljavax/mail/internet/MimeBodyPart;Ljava/security/Provider;)Ljavax/mail/internet/MimeMultipart;
    .locals 7
    .parameter "content"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    .prologue
    .line 332
    :try_start_0
    new-instance v4, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v4}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 334
    .local v4, sig:Ljavax/mail/internet/MimeBodyPart;
    new-instance v5, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6, p2}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;-><init>(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;Ljavax/mail/internet/MimeBodyPart;ZLjava/security/Provider;)V

    const-string v6, "application/pkcs7-signature; name=smime.p7s; smime-type=signed-data"

    invoke-virtual {v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    const-string v5, "Content-Type"

    const-string v6, "application/pkcs7-signature; name=smime.p7s; smime-type=signed-data"

    invoke-virtual {v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v5, "Content-Disposition"

    const-string v6, "attachment; filename=\"smime.p7s\""

    invoke-virtual {v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v5, "Content-Description"

    const-string v6, "S/MIME Cryptographic Signature"

    invoke-virtual {v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v5, "Content-Transfer-Encoding"

    iget-object v6, p0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->encoding:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "signed; protocol=\"application/pkcs7-signature\""

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 346
    .local v2, header:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_signers:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 348
    .local v0, allSigners:Ljava/util/List;
    iget-object v5, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_oldSigners:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 350
    invoke-direct {p0, v2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->addHashHeader(Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 352
    new-instance v3, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 354
    .local v3, mm:Ljavax/mail/internet/MimeMultipart;
    invoke-virtual {v3, p1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 355
    invoke-virtual {v3, v4}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    return-object v3

    .line 358
    .end local v0           #allSigners:Ljava/util/List;
    .end local v2           #header:Ljava/lang/StringBuffer;
    .end local v3           #mm:Ljavax/mail/internet/MimeMultipart;
    .end local v4           #sig:Ljavax/mail/internet/MimeBodyPart;
    :catch_0
    move-exception v1

    .line 359
    .local v1, e:Ljavax/mail/MessagingException;
    new-instance v5, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v6, "exception putting multi-part together."

    invoke-direct {v5, v6, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method


# virtual methods
.method public addCertificatesAndCRLs(Ljava/security/cert/CertStore;)V
    .locals 1
    .parameter "certStore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_certStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V
    .locals 8
    .parameter "key"
    .parameter "cert"
    .parameter "digestOID"
    .parameter "signedAttr"
    .parameter "unsignedAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v7, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_signers:Ljava/util/List;

    new-instance v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;-><init>(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public generate(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)Ljavax/mail/internet/MimeMultipart;
    .locals 2
    .parameter "content"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->makeContentBodyPart(Ljavax/mail/internet/MimeBodyPart;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    invoke-static {p2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->make(Ljavax/mail/internet/MimeBodyPart;Ljava/security/Provider;)Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    return-object v0
.end method
