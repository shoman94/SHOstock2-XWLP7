.class Lmyorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
.super Ljava/lang/Object;
.source "PasswordRecipientInfoGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/RecipientInfoGenerator;


# instance fields
.field private derivationAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private wrapKey:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public generate(Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;Ljava/security/Provider;)Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 9
    .parameter "key"
    .parameter "random"
    .parameter "prov"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 40
    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    .line 41
    .local v1, helper:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;
    iget-object v6, p0, Lmyorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->wrapKey:Ljavax/crypto/SecretKey;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getRFC3211WrapperName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, wrapAlgName:Ljava/lang/String;
    invoke-virtual {v1, v5, p3}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createAsymmetricCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 43
    .local v2, keyCipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x3

    iget-object v7, p0, Lmyorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->wrapKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v6, v7, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 44
    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v6

    invoke-direct {v0, v6}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 46
    .local v0, encKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v4, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 47
    .local v4, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v6, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v7, p0, Lmyorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->wrapKey:Ljavax/crypto/SecretKey;

    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 48
    new-instance v6, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4, v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 49
    new-instance v3, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_PWRI_KEK:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v7, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v4}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v3, v6, v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 52
    .local v3, keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v6, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v7, Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    iget-object v8, p0, Lmyorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->derivationAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v7, v8, v3, v0}, Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;)V

    return-object v6
.end method
