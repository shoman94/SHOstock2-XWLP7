.class public Lmyorg/bouncycastle/asn1/x509/TBSCertList;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/asn1/x509/TBSCertList$1;,
        Lmyorg/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;,
        Lmyorg/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;,
        Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    }
.end annotation


# instance fields
.field crlExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field issuer:Lmyorg/bouncycastle/asn1/x509/X509Name;

.field nextUpdate:Lmyorg/bouncycastle/asn1/x509/Time;

.field revokedCertificates:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field signature:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field thisUpdate:Lmyorg/bouncycastle/asn1/x509/Time;

.field version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .parameter "seq"

    .prologue
    .line 127
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 128
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_1

    .line 129
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_1
    const/4 v0, 0x0

    .line 134
    .local v0, seqPos:I
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 136
    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_5

    .line 137
    add-int/lit8 v1, v0, 0x1

    .end local v0           #seqPos:I
    .local v1, seqPos:I
    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    move v0, v1

    .line 142
    .end local v1           #seqPos:I
    .restart local v0       #seqPos:I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #seqPos:I
    .restart local v1       #seqPos:I
    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->signature:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 143
    add-int/lit8 v0, v1, 0x1

    .end local v1           #seqPos:I
    .restart local v0       #seqPos:I
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->issuer:Lmyorg/bouncycastle/asn1/x509/X509Name;

    .line 144
    add-int/lit8 v1, v0, 0x1

    .end local v0           #seqPos:I
    .restart local v1       #seqPos:I
    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lmyorg/bouncycastle/asn1/x509/Time;

    .line 146
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lmyorg/bouncycastle/asn1/DERUTCTime;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lmyorg/bouncycastle/asn1/x509/Time;

    if-eqz v2, :cond_6

    .line 150
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .end local v1           #seqPos:I
    .restart local v0       #seqPos:I
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Time;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lmyorg/bouncycastle/asn1/x509/Time;

    .line 153
    :goto_1
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    if-nez v2, :cond_3

    .line 154
    add-int/lit8 v1, v0, 0x1

    .end local v0           #seqPos:I
    .restart local v1       #seqPos:I
    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move v0, v1

    .line 157
    .end local v1           #seqPos:I
    .restart local v0       #seqPos:I
    :cond_3
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    if-eqz v2, :cond_4

    .line 158
    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    .line 160
    :cond_4
    return-void

    .line 139
    :cond_5
    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    goto/16 :goto_0

    .end local v0           #seqPos:I
    .restart local v1       #seqPos:I
    :cond_6
    move v0, v1

    .end local v1           #seqPos:I
    .restart local v0       #seqPos:I
    goto :goto_1
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/TBSCertList;
    .locals 3
    .parameter "obj"

    .prologue
    .line 118
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    if-eqz v0, :cond_0

    .line 119
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    .line 121
    .end local p0
    :goto_0
    return-object p0

    .line 120
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/TBSCertList;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 124
    .restart local p0
    :cond_1
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
.method public getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->issuer:Lmyorg/bouncycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public getNextUpdate()Lmyorg/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lmyorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lmyorg/bouncycastle/asn1/x509/TBSCertList;Lmyorg/bouncycastle/asn1/x509/TBSCertList$1;)V

    .line 205
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;-><init>(Lmyorg/bouncycastle/asn1/x509/TBSCertList;Ljava/util/Enumeration;)V

    goto :goto_0
.end method

.method public getRevokedCertificates()[Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .locals 4

    .prologue
    .line 187
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_1

    .line 188
    const/4 v2, 0x0

    new-array v0, v2, [Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 197
    :cond_0
    return-object v0

    .line 191
    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v0, v2, [Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 193
    .local v0, entries:[Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 194
    new-instance v2, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;-><init>(Lmyorg/bouncycastle/asn1/x509/TBSCertList;Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    aput-object v2, v0, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSignature()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->signature:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getThisUpdate()Lmyorg/bouncycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lmyorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
