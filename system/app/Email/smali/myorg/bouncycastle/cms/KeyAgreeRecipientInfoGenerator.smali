.class Lmyorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;
.super Ljava/lang/Object;
.source "KeyAgreeRecipientInfoGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/RecipientInfoGenerator;


# instance fields
.field private algorithmOID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private originator:Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

.field private recipientTBSCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

.field private ukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private wrapAlgorithmOID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private wrapKey:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public generate(Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;Ljava/security/Provider;)Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 11
    .parameter "key"
    .parameter "random"
    .parameter "prov"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v4, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 71
    .local v4, params:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v6, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->wrapAlgorithmOID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 72
    sget-object v6, Lmyorg/bouncycastle/asn1/DERNull;->INSTANCE:Lmyorg/bouncycastle/asn1/DERNull;

    invoke-virtual {v4, v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 73
    new-instance v3, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v6, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->algorithmOID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v7, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v4}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v3, v6, v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 76
    .local v3, keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v1, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    iget-object v6, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->recipientTBSCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v6

    iget-object v7, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->recipientTBSCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V

    .line 79
    .local v1, issuerSerial:Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    sget-object v6, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    iget-object v7, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->wrapAlgorithmOID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p3}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createAsymmetricCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 83
    .local v2, keyCipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x3

    iget-object v7, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->wrapKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v6, v7, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 84
    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v6

    invoke-direct {v0, v6}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 86
    .local v0, encKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v5, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;

    new-instance v6, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    invoke-direct {v6, v1}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;-><init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    invoke-direct {v5, v6, v0}, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;-><init>(Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 89
    .local v5, rKey:Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;
    new-instance v6, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v7, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    iget-object v8, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->originator:Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    iget-object v9, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->ukm:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    new-instance v10, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v5}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v7, v8, v9, v3, v10}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;Lmyorg/bouncycastle/asn1/ASN1OctetString;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;)V

    return-object v6
.end method
