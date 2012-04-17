.class public Lmyorg/bouncycastle/asn1/x509/TargetInformation;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "TargetInformation.java"


# instance fields
.field private targets:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .parameter "seq"

    .prologue
    .line 49
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 50
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/TargetInformation;->targets:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 51
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/TargetInformation;
    .locals 3
    .parameter "obj"

    .prologue
    .line 33
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/TargetInformation;

    if-eqz v0, :cond_0

    .line 34
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/TargetInformation;

    .line 36
    .end local p0
    :goto_0
    return-object p0

    .line 35
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 36
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/TargetInformation;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/TargetInformation;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 39
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

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getTargetsObjects()[Lmyorg/bouncycastle/asn1/x509/Targets;
    .locals 5

    .prologue
    .line 59
    iget-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TargetInformation;->targets:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v0, v4, [Lmyorg/bouncycastle/asn1/x509/Targets;

    .line 60
    .local v0, copy:[Lmyorg/bouncycastle/asn1/x509/Targets;
    const/4 v1, 0x0

    .line 61
    .local v1, count:I
    iget-object v4, p0, Lmyorg/bouncycastle/asn1/x509/TargetInformation;->targets:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/Targets;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Targets;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v2

    .end local v2           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .line 64
    :cond_0
    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TargetInformation;->targets:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
