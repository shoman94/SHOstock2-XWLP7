.class public Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "TBSRequest.java"


# static fields
.field private static final V1:Lmyorg/bouncycastle/asn1/DERInteger;


# instance fields
.field requestExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field requestList:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field requestorName:Lmyorg/bouncycastle/asn1/x509/GeneralName;

.field version:Lmyorg/bouncycastle/asn1/DERInteger;

.field versionSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lmyorg/bouncycastle/asn1/DERInteger;

    return-void
.end method


# virtual methods
.method public getRequestExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 105
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 112
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    sget-object v2, Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;->versionSet:Z

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 116
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_2

    .line 117
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 120
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;->requestList:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 122
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_3

    .line 123
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 126
    :cond_3
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
