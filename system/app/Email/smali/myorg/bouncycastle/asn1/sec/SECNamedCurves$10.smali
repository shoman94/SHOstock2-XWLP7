.class final Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$10;
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
    .line 237
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 11

    .prologue
    .line 240
    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"

    #calls: Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    .line 241
    .local v8, p:Ljava/math/BigInteger;
    sget-object v6, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 242
    .local v6, a:Ljava/math/BigInteger;
    const-wide/16 v9, 0x5

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 243
    .local v7, b:Ljava/math/BigInteger;
    const/4 v5, 0x0

    .line 244
    .local v5, S:[B
    const-string v0, "010000000000000000000000000001DCE8D2EC6184CAF0A971769FB1F7"

    #calls: Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    .line 245
    .local v3, n:Ljava/math/BigInteger;
    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 247
    .local v4, h:Ljava/math/BigInteger;
    new-instance v1, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-direct {v1, v8, v6, v7}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 250
    .local v1, curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    const-string v0, "04A1455B334DF099DF30FC28A169A467E9E47075A90F7E650EB6B7A45C7E089FED7FBA344282CAFBD6F7E319F7C0B0BD59E2CA4BDB556D61A5"

    invoke-static {v0}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;->decodePoint([B)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 254
    .local v2, G:Lmyorg/bouncycastle/math/ec/ECPoint;
    new-instance v0, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
