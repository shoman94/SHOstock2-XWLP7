.class public Lmyorg/bouncycastle/asn1/x509/GeneralNames;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "GeneralNames.java"


# instance fields
.field private final names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .parameter "seq"

    .prologue
    .line 41
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 42
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lmyorg/bouncycastle/asn1/x509/GeneralName;

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    aput-object v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 35
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Lmyorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .line 39
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 3
    .parameter "obj"

    .prologue
    .line 14
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_1

    .line 15
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    .line 19
    .end local p0
    :goto_0
    return-object p0

    .line 18
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 19
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 22
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 27
    invoke-static {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    array-length v1, v1

    new-array v0, v1, [Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .line 52
    .local v0, tmp:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lmyorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>([Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, sep:Ljava/lang/String;
    const-string v3, "GeneralNames:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    array-length v3, v3

    if-eq v1, v3, :cond_0

    .line 76
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
