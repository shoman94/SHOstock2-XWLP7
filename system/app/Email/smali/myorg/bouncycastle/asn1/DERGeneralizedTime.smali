.class public Lmyorg/bouncycastle/asn1/DERGeneralizedTime;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERGeneralizedTime.java"


# instance fields
.field time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "time"

    .prologue
    .line 57
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 58
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

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

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>([B)V
    .locals 3
    .parameter "bytes"

    .prologue
    .line 77
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 81
    array-length v2, p1

    new-array v0, v2, [C

    .line 83
    .local v0, dateC:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 84
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private calculateGMTOffset()Ljava/lang/String;
    .locals 7

    .prologue
    .line 136
    const-string v3, "+"

    .line 137
    .local v3, sign:Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 138
    .local v4, timeZone:Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 139
    .local v2, offset:I
    if-gez v2, :cond_0

    .line 140
    const-string v3, "-"

    .line 141
    neg-int v2, v2

    .line 143
    :cond_0
    const v5, 0x36ee80

    div-int v0, v2, v5

    .line 144
    .local v0, hours:I
    mul-int/lit8 v5, v0, 0x3c

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    sub-int v5, v2, v5

    const v6, 0xea60

    div-int v1, v5, v6

    .line 147
    .local v1, minutes:I
    :try_start_0
    invoke-virtual {v4}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    add-int/2addr v0, v5

    .line 154
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->convert(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->convert(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 148
    :cond_2
    const/4 v5, -0x1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private convert(I)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 158
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERGeneralizedTime;
    .locals 3
    .parameter "obj"

    .prologue
    .line 23
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v0, :cond_1

    .line 24
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 28
    .end local p0
    :goto_0
    return-object p0

    .line 27
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_2

    .line 28
    new-instance v0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;-><init>([B)V

    move-object p0, v0

    goto :goto_0

    .line 31
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

.method private getOctets()[B
    .locals 4

    .prologue
    .line 220
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 221
    .local v1, cs:[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 223
    .local v0, bs:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 224
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_0
    return-object v0
.end method

.method private hasFractionalSeconds()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 235
    instance-of v0, p1, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 239
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    check-cast p1, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    .end local p1
    iget-object v1, p1, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    const/16 v0, 0x18

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 232
    return-void
.end method

.method public getDate()Ljava/util/Date;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xe

    const/4 v7, 0x0

    .line 167
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    .line 169
    .local v1, d:Ljava/lang/String;
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    const-string v6, "Z"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->hasFractionalSeconds()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss.SSS\'Z\'"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, dateF:Ljava/text/SimpleDateFormat;
    :goto_0
    new-instance v5, Ljava/util/SimpleTimeZone;

    const-string v6, "Z"

    invoke-direct {v5, v7, v6}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 196
    :goto_1
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->hasFractionalSeconds()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 198
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, frac:Ljava/lang/String;
    const/4 v4, 0x1

    .local v4, index:I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 202
    .local v0, ch:C
    const/16 v5, 0x30

    if-gt v5, v0, :cond_0

    const/16 v5, 0x39

    if-le v0, v5, :cond_8

    .line 206
    .end local v0           #ch:C
    :cond_0
    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x4

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .end local v3           #frac:Ljava/lang/String;
    .end local v4           #index:I
    :cond_1
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    return-object v5

    .line 173
    .end local v2           #dateF:Ljava/text/SimpleDateFormat;
    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss\'Z\'"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v2       #dateF:Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 177
    .end local v2           #dateF:Ljava/text/SimpleDateFormat;
    :cond_3
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gtz v5, :cond_4

    iget-object v5, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    const/16 v6, 0x2b

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_6

    .line 178
    :cond_4
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->hasFractionalSeconds()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 180
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss.SSSz"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v2       #dateF:Ljava/text/SimpleDateFormat;
    :goto_3
    new-instance v5, Ljava/util/SimpleTimeZone;

    const-string v6, "Z"

    invoke-direct {v5, v7, v6}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_1

    .line 182
    .end local v2           #dateF:Ljava/text/SimpleDateFormat;
    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmssz"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v2       #dateF:Ljava/text/SimpleDateFormat;
    goto :goto_3

    .line 187
    .end local v2           #dateF:Ljava/text/SimpleDateFormat;
    :cond_6
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->hasFractionalSeconds()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 188
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss.SSS"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v2       #dateF:Ljava/text/SimpleDateFormat;
    :goto_4
    new-instance v5, Ljava/util/SimpleTimeZone;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_1

    .line 190
    .end local v2           #dateF:Ljava/text/SimpleDateFormat;
    :cond_7
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v2       #dateF:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .line 200
    .restart local v0       #ch:C
    .restart local v3       #frac:Ljava/lang/String;
    .restart local v4       #index:I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method

.method public getTime()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x2d

    const/16 v4, 0x2b

    const/4 v5, 0x0

    .line 116
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    iget-object v4, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GMT+00:00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    :goto_0
    return-object v2

    .line 119
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x5

    .line 120
    .local v1, signPos:I
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 121
    .local v0, sign:C
    if-eq v0, v6, :cond_1

    if-ne v0, v4, :cond_2

    .line 122
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 125
    :cond_2
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x3

    .line 126
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 127
    if-eq v0, v6, :cond_3

    if-ne v0, v4, :cond_4

    .line 128
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 132
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->calculateGMTOffset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->time:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
