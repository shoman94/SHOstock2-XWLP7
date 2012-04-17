.class public Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;
.super Lmyorg/bouncycastle/sasn1/DerObject;
.source "Asn1ObjectIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier$OIDTokenizer;
    }
.end annotation


# instance fields
.field private _oid:Ljava/lang/String;


# direct methods
.method constructor <init>(I[B)V
    .locals 12
    .parameter "baseTag"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x2e

    .line 17
    const/4 v7, 0x6

    invoke-direct {p0, p1, v7, p2}, Lmyorg/bouncycastle/sasn1/DerObject;-><init>(II[B)V

    .line 19
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    .local v4, objId:Ljava/lang/StringBuffer;
    const-wide/16 v5, 0x0

    .line 21
    .local v5, value:J
    const/4 v3, 0x1

    .line 22
    .local v3, first:Z
    const/4 v0, 0x0

    .line 23
    .local v0, b:I
    const/4 v2, 0x0

    .line 24
    .local v2, bigValue:Ljava/math/BigInteger;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 26
    .local v1, bIn:Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_4

    .line 27
    const-wide/high16 v7, 0x80

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    .line 28
    const-wide/16 v7, 0x80

    mul-long/2addr v7, v5

    and-int/lit8 v9, v0, 0x7f

    int-to-long v9, v9

    add-long v5, v7, v9

    .line 29
    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_0

    .line 31
    if-eqz v3, :cond_1

    .line 32
    long-to-int v7, v5

    div-int/lit8 v7, v7, 0x28

    packed-switch v7, :pswitch_data_0

    .line 41
    const/16 v7, 0x32

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    const-wide/16 v7, 0x50

    sub-long/2addr v5, v7

    .line 44
    :goto_1
    const/4 v3, 0x0

    .line 47
    :cond_1
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 49
    const-wide/16 v5, 0x0

    goto :goto_0

    .line 34
    :pswitch_0
    const/16 v7, 0x30

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 37
    :pswitch_1
    const/16 v7, 0x31

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 38
    const-wide/16 v7, 0x28

    sub-long/2addr v5, v7

    .line 39
    goto :goto_1

    .line 52
    :cond_2
    if-nez v2, :cond_3

    .line 53
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 55
    :cond_3
    const/4 v7, 0x7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 56
    and-int/lit8 v7, v0, 0x7f

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 57
    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_0

    .line 58
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 60
    const/4 v2, 0x0

    .line 61
    const-wide/16 v5, 0x0

    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;->_oid:Ljava/lang/String;

    .line 67
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 84
    instance-of v0, p1, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 88
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;->_oid:Ljava/lang/String;

    check-cast p1, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;

    .end local p1
    iget-object v1, p1, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;->_oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;->_oid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;->_oid:Ljava/lang/String;

    return-object v0
.end method
