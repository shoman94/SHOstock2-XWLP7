.class public Lmyorg/bouncycastle/cms/CMSSignedData;
.super Ljava/lang/Object;
.source "CMSSignedData.java"


# static fields
.field private static final HELPER:Lmyorg/bouncycastle/cms/CMSSignedHelper;


# instance fields
.field certStore:Ljava/security/cert/CertStore;

.field contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

.field private hashes:Ljava/util/Map;

.field signedContent:Lmyorg/bouncycastle/cms/CMSProcessable;

.field signedData:Lmyorg/bouncycastle/asn1/cms/SignedData;

.field signerInfoStore:Lmyorg/bouncycastle/cms/SignerInformationStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedData;->HELPER:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "sigData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p1}, Lmyorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/cms/CMSSignedData;-><init>(Lmyorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 2
    .parameter "sigData"

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    .line 125
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedData:Lmyorg/bouncycastle/asn1/cms/SignedData;

    .line 131
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedData:Lmyorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v1, Lmyorg/bouncycastle/cms/CMSProcessableByteArray;

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedData:Lmyorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    iput-object v1, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedContent:Lmyorg/bouncycastle/cms/CMSProcessable;

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedContent:Lmyorg/bouncycastle/cms/CMSProcessable;

    goto :goto_0
.end method

.method public constructor <init>(Lmyorg/bouncycastle/cms/CMSProcessable;Ljava/io/InputStream;)V
    .locals 1
    .parameter "signedContent"
    .parameter "sigData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lmyorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/cms/CMSSignedData;-><init>(Lmyorg/bouncycastle/cms/CMSProcessable;Lmyorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/cms/CMSProcessable;Lmyorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .parameter "signedContent"
    .parameter "sigData"

    .prologue
    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedContent:Lmyorg/bouncycastle/cms/CMSProcessable;

    .line 113
    iput-object p2, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    .line 114
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedData:Lmyorg/bouncycastle/asn1/cms/SignedData;

    .line 115
    return-void
.end method


# virtual methods
.method public getCertificatesAndCRLs(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertStore;
    .locals 1
    .parameter "type"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {p2}, Lmyorg/bouncycastle/cms/CMSUtils;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/cms/CMSSignedData;->getCertificatesAndCRLs(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertStore;

    move-result-object v0

    return-object v0
.end method

.method public getCertificatesAndCRLs(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertStore;
    .locals 3
    .parameter "type"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v2, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->certStore:Ljava/security/cert/CertStore;

    if-nez v2, :cond_0

    .line 317
    iget-object v2, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedData:Lmyorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/cms/SignedData;->getCertificates()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 318
    .local v0, certSet:Lmyorg/bouncycastle/asn1/ASN1Set;
    iget-object v2, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedData:Lmyorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/cms/SignedData;->getCRLs()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 320
    .local v1, crlSet:Lmyorg/bouncycastle/asn1/ASN1Set;
    sget-object v2, Lmyorg/bouncycastle/cms/CMSSignedData;->HELPER:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v2, p1, p2, v0, v1}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->createCertStore(Ljava/lang/String;Ljava/security/Provider;Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/ASN1Set;)Ljava/security/cert/CertStore;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->certStore:Ljava/security/cert/CertStore;

    .line 323
    .end local v0           #certSet:Lmyorg/bouncycastle/asn1/ASN1Set;
    .end local v1           #crlSet:Lmyorg/bouncycastle/asn1/ASN1Set;
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->certStore:Ljava/security/cert/CertStore;

    return-object v2
.end method

.method public getSignedContent()Lmyorg/bouncycastle/cms/CMSProcessable;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedContent:Lmyorg/bouncycastle/cms/CMSProcessable;

    return-object v0
.end method

.method public getSignerInfos()Lmyorg/bouncycastle/cms/SignerInformationStore;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 151
    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lmyorg/bouncycastle/cms/SignerInformationStore;

    if-nez v6, :cond_2

    .line 152
    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedData:Lmyorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    .line 153
    .local v4, s:Lmyorg/bouncycastle/asn1/ASN1Set;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v5, signerInfos:Ljava/util/List;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-eq v2, v6, :cond_1

    .line 156
    invoke-virtual {v4, v2}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    .line 157
    .local v3, info:Lmyorg/bouncycastle/asn1/cms/SignerInfo;
    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedData:Lmyorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 159
    .local v0, contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    if-nez v6, :cond_0

    .line 160
    new-instance v6, Lmyorg/bouncycastle/cms/SignerInformation;

    iget-object v7, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signedContent:Lmyorg/bouncycastle/cms/CMSProcessable;

    invoke-direct {v6, v3, v0, v7, v8}, Lmyorg/bouncycastle/cms/SignerInformation;-><init>(Lmyorg/bouncycastle/asn1/cms/SignerInfo;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/cms/CMSProcessable;Lmyorg/bouncycastle/cms/DigestCalculator;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    .line 166
    .local v1, hash:[B
    new-instance v6, Lmyorg/bouncycastle/cms/SignerInformation;

    new-instance v7, Lmyorg/bouncycastle/cms/BaseDigestCalculator;

    invoke-direct {v7, v1}, Lmyorg/bouncycastle/cms/BaseDigestCalculator;-><init>([B)V

    invoke-direct {v6, v3, v0, v8, v7}, Lmyorg/bouncycastle/cms/SignerInformation;-><init>(Lmyorg/bouncycastle/asn1/cms/SignerInfo;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/cms/CMSProcessable;Lmyorg/bouncycastle/cms/DigestCalculator;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    .end local v0           #contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v1           #hash:[B
    .end local v3           #info:Lmyorg/bouncycastle/asn1/cms/SignerInfo;
    :cond_1
    new-instance v6, Lmyorg/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v6, v5}, Lmyorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lmyorg/bouncycastle/cms/SignerInformationStore;

    .line 174
    .end local v2           #i:I
    .end local v4           #s:Lmyorg/bouncycastle/asn1/ASN1Set;
    .end local v5           #signerInfos:Ljava/util/List;
    :cond_2
    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lmyorg/bouncycastle/cms/SignerInformationStore;

    return-object v6
.end method
