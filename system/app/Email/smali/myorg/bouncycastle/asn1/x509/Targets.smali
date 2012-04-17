.class public Lmyorg/bouncycastle/asn1/x509/Targets;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "Targets.java"


# instance fields
.field private targets:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .parameter "targets"

    .prologue
    .line 64
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 65
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/Targets;->targets:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 66
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Targets;
    .locals 3
    .parameter "obj"

    .prologue
    .line 48
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/Targets;

    if-eqz v0, :cond_0

    .line 49
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/Targets;

    .line 51
    .end local p0
    :goto_0
    return-object p0

    .line 50
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/Targets;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/Targets;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 54
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
.method public getTargets()[Lmyorg/bouncycastle/asn1/x509/Target;
    .locals 5

    .prologue
    .line 89
    iget-object v4, p0, Lmyorg/bouncycastle/asn1/x509/Targets;->targets:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v3, v4, [Lmyorg/bouncycastle/asn1/x509/Target;

    .line 90
    .local v3, targs:[Lmyorg/bouncycastle/asn1/x509/Target;
    const/4 v0, 0x0

    .line 91
    .local v0, count:I
    iget-object v4, p0, Lmyorg/bouncycastle/asn1/x509/Targets;->targets:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/Target;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Target;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_0

    .line 94
    :cond_0
    return-object v3
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Targets;->targets:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
