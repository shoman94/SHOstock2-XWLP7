.class final Lmyorg/bouncycastle/asn1/x9/X962NamedCurves$12;
.super Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "X962NamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/asn1/x9/X962NamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 9

    .prologue
    const/16 v8, 0x10

    .line 192
    new-instance v5, Ljava/math/BigInteger;

    const-string v1, "40000000000000000000000004A20E90C39067C893BBB9A5"

    invoke-direct {v5, v1, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 194
    .local v5, c2m191v1n:Ljava/math/BigInteger;
    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 196
    .local v6, c2m191v1h:Ljava/math/BigInteger;
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xbf

    const/16 v2, 0x9

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "2866537B676752636A68F56554E12640276B649EF7526267"

    invoke-direct {v3, v4, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v7, "2E45EF571F00786F67B0081B9495A3D95462F5DE0AA185EC"

    invoke-direct {v4, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 200
    .local v0, c2m191v1:Lmyorg/bouncycastle/math/ec/ECCurve;
    new-instance v2, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    const-string v1, "0236B3DAF8A23206F9C4F299D7B21A9C369137F2C84AE1AA0D"

    invoke-static {v1}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->decodePoint([B)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    const-string v1, "4E13CA542744D696E67687561517552F279A8C84"

    invoke-static {v1}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v7

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v2
.end method
