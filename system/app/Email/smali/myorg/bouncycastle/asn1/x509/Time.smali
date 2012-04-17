.class public Lmyorg/bouncycastle/asn1/x509/Time;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "Time.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field time:Lmyorg/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObject;)V
    .locals 2
    .parameter "time"

    .prologue
    .line 23
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 24
    instance-of v0, p1, Lmyorg/bouncycastle/asn1/DERUTCTime;

    if-nez v0, :cond_0

    instance-of v0, p1, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object passed to Time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/Time;->time:Lmyorg/bouncycastle/asn1/DERObject;

    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Time;
    .locals 3
    .parameter "obj"

    .prologue
    .line 52
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_0

    .line 53
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/Time;

    .line 57
    .end local p0
    :goto_0
    return-object p0

    .line 54
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/DERUTCTime;

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/Time;

    check-cast p0, Lmyorg/bouncycastle/asn1/DERUTCTime;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/Time;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_0

    .line 56
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/Time;

    check-cast p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/Time;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_0

    .line 60
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
.method public getDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/Time;->time:Lmyorg/bouncycastle/asn1/DERObject;

    instance-of v1, v1, Lmyorg/bouncycastle/asn1/DERUTCTime;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/Time;->time:Lmyorg/bouncycastle/asn1/DERObject;

    check-cast v1, Lmyorg/bouncycastle/asn1/DERUTCTime;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERUTCTime;->getAdjustedDate()Ljava/util/Date;

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/Time;->time:Lmyorg/bouncycastle/asn1/DERObject;

    check-cast v1, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid date string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Time;->time:Lmyorg/bouncycastle/asn1/DERObject;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/DERUTCTime;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Time;->time:Lmyorg/bouncycastle/asn1/DERObject;

    check-cast v0, Lmyorg/bouncycastle/asn1/DERUTCTime;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERUTCTime;->getAdjustedTime()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Time;->time:Lmyorg/bouncycastle/asn1/DERObject;

    check-cast v0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/Time;->time:Lmyorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
