.class public Lmyorg/bouncycastle/asn1/ess/ESSCertIDv2;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ESSCertIDv2.java"


# static fields
.field private static final DEFAULT_ALG_ID:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private certHash:[B

.field private hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private issuerSerial:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ess/ESSCertIDv2;->DEFAULT_ALG_ID:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 99
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ess/ESSCertIDv2;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/ess/ESSCertIDv2;->DEFAULT_ALG_ID:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ess/ESSCertIDv2;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 103
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/ess/ESSCertIDv2;->certHash:[B

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DEROctetString;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 105
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ess/ESSCertIDv2;->issuerSerial:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ess/ESSCertIDv2;->issuerSerial:Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 109
    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
