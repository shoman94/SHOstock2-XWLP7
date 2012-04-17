.class final Lmyorg/bouncycastle/asn1/x9/X962NamedCurves$8;
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
    .line 130
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 11

    .prologue
    const/16 v10, 0x10

    .line 132
    new-instance v7, Ljava/math/BigInteger;

    const-string v1, "0400000000000000000001E60FC8821CC74DAEAFC1"

    invoke-direct {v7, v1, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 133
    .local v7, c2m163v1n:Ljava/math/BigInteger;
    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 135
    .local v8, c2m163v1h:Ljava/math/BigInteger;
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xa3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "072546B5435234A422E0789675F432C89435DE5242"

    invoke-direct {v5, v6, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v9, "00C9517D06D5240D3CFF38C74B20B6CD4D6F9DD4D9"

    invoke-direct {v6, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v8}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 139
    .local v0, c2m163v1:Lmyorg/bouncycastle/math/ec/ECCurve;
    new-instance v4, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    const-string v1, "0307AF69989546103D79329FCC3D74880F33BBE803CB"

    invoke-static {v1}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->decodePoint([B)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    const-string v1, "D2COFB15760860DEF1EEF4D696E6768756151754"

    invoke-static {v1}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v9

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v4
.end method
