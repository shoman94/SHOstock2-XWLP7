.class final Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$24;
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
    .line 595
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 13

    .prologue
    .line 597
    const/16 v1, 0xc1

    .line 598
    .local v1, m:I
    const/16 v2, 0xf

    .line 600
    .local v2, k:I
    const-string v7, "0163F35A5137C2CE3EA6ED8667190B0BC43ECD69977702709B"

    #calls: Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v7}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    .line 601
    .local v3, a:Ljava/math/BigInteger;
    const-string v7, "00C9BB9E8927D4D64C377E2AB2856A5B16E3EFB7F61D4316AE"

    #calls: Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v7}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    .line 602
    .local v4, b:Ljava/math/BigInteger;
    const-string v7, "10B7B4D696E676875615175137C8A16FD0DA2211"

    invoke-static {v7}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v12

    .line 603
    .local v12, S:[B
    const-string v7, "010000000000000000000000015AAB561B005413CCD4EE99D5"

    #calls: Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v7}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    .line 604
    .local v5, n:Ljava/math/BigInteger;
    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 606
    .local v6, h:Ljava/math/BigInteger;
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 609
    .local v0, curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    const-string v7, "0400D9B67D192E0367C803F39E1A7E82CA14A651350AAE617E8F01CE94335607C304AC29E7DEFBD9CA01F596F927224CDECF6C"

    invoke-static {v7}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->decodePoint([B)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 613
    .local v9, G:Lmyorg/bouncycastle/math/ec/ECPoint;
    new-instance v7, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-object v8, v0

    move-object v10, v5

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v7
.end method
