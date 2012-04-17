.class public Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CRLDistPoint.java"


# instance fields
.field seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 28
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 29
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 30
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;
    .locals 3
    .parameter "obj"

    .prologue
    .line 19
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 20
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;

    .line 22
    .end local p0
    :goto_0
    return-object p0

    .line 21
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 22
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 25
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDistributionPoints()[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    .locals 3

    .prologue
    .line 48
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v0, v2, [Lmyorg/bouncycastle/asn1/x509/DistributionPoint;

    .line 50
    .local v0, dp:[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 51
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, sep:Ljava/lang/String;
    const-string v4, "CRLDistPoint:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v1

    .line 75
    .local v1, dp:[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-eq v2, v4, :cond_0

    .line 76
    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
