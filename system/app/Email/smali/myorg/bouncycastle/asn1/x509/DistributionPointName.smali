.class public Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "DistributionPointName.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field name:Lmyorg/bouncycastle/asn1/DEREncodable;

.field type:I


# direct methods
.method public constructor <init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .parameter "type"
    .parameter "name"

    .prologue
    .line 51
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 52
    iput p1, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->type:I

    .line 53
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 54
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 79
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->type:I

    .line 81
    iget v0, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->type:I

    if-nez v0, :cond_0

    .line 82
    invoke-static {p1, v1}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lmyorg/bouncycastle/asn1/DEREncodable;

    goto :goto_0
.end method

.method private appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "buf"
    .parameter "sep"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 108
    const-string v0, "    "

    .line 110
    .local v0, indent:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
    .locals 3
    .parameter "obj"

    .prologue
    .line 34
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    .line 37
    .end local p0
    :goto_0
    return-object p0

    .line 36
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;-><init>(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

    goto :goto_0

    .line 40
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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
    .locals 1
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getName()Lmyorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->type:I

    return v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->type:I

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, sep:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "DistributionPointName: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    iget v2, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->type:I

    if-nez v2, :cond_0

    .line 98
    const-string v2, "fullName"

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 100
    :cond_0
    const-string v2, "nameRelativeToCRLIssuer"

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
