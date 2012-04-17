.class Lmyorg/bouncycastle/cms/KEKRecipientInfoGenerator;
.super Ljava/lang/Object;
.source "KEKRecipientInfoGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/RecipientInfoGenerator;


# instance fields
.field private keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private secKeyId:Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;

.field private wrapKey:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public generate(Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;Ljava/security/Provider;)Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 6
    .parameter "key"
    .parameter "random"
    .parameter "prov"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v2, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    iget-object v3, p0, Lmyorg/bouncycastle/cms/KEKRecipientInfoGenerator;->keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createAsymmetricCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 53
    .local v1, keyCipher:Ljavax/crypto/Cipher;
    const/4 v2, 0x3

    iget-object v3, p0, Lmyorg/bouncycastle/cms/KEKRecipientInfoGenerator;->wrapKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 54
    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 56
    .local v0, encKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v2, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v3, Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    iget-object v4, p0, Lmyorg/bouncycastle/cms/KEKRecipientInfoGenerator;->secKeyId:Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;

    iget-object v5, p0, Lmyorg/bouncycastle/cms/KEKRecipientInfoGenerator;->keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v3, v4, v5, v0}, Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;)V

    return-object v2
.end method
