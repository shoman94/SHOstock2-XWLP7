.class final Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$16;
.super Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 13

    .prologue
    .line 391
    const/16 v1, 0x71

    .line 392
    .local v1, m:I
    const/16 v2, 0x9

    .line 394
    .local v2, k:I
    const-string v7, "003088250CA6E7C7FE649CE85820F7"

    #calls: Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v7}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    .line 395
    .local v3, a:Ljava/math/BigInteger;
    const-string v7, "00E8BEE4D3E2260744188BE0E9C723"

    #calls: Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v7}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    .line 396
    .local v4, b:Ljava/math/BigInteger;
    const-string v7, "10E723AB14D696E6768756151756FEBF8FCB49A9"

    invoke-static {v7}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v12

    .line 397
    .local v12, S:[B
    const-string v7, "0100000000000000D9CCEC8A39E56F"

    #calls: Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v7}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    .line 398
    .local v5, n:Ljava/math/BigInteger;
    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 400
    .local v6, h:Ljava/math/BigInteger;
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 403
    .local v0, curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    const-string v7, "04009D73616F35F4AB1407D73562C10F00A52830277958EE84D1315ED31886"

    invoke-static {v7}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->decodePoint([B)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 406
    .local v9, G:Lmyorg/bouncycastle/math/ec/ECPoint;
    new-instance v7, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-object v8, v0

    move-object v10, v5

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v7
.end method
