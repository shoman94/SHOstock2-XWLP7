.class public Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;
.super Ljava/lang/Object;
.source "SECNamedCurves.java"


# static fields
.field static final curves:Ljava/util/Hashtable;

.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;

.field static secp112r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp112r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp128r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp128r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp160r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp192k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp192r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp384r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp521r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect113r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect113r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect131r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect131r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect163r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect193r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect193r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect233k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect233r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect239k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect283k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect283r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect409k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect409r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect571k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static sect571r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$1;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$1;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 48
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$2;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$2;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 71
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$3;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$3;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 94
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$4;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$4;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 117
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$5;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$5;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 141
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$6;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$6;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 165
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$7;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$7;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 189
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$8;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$8;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 213
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$9;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$9;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 237
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$10;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$10;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 261
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$11;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$11;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 285
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$12;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$12;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 310
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$13;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$13;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 335
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$14;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$14;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 362
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$15;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$15;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 389
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$16;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$16;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 413
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$17;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$17;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 437
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$18;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$18;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 463
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$19;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$19;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 489
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$20;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$20;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 516
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$21;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$21;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 543
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$22;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$22;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 570
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$23;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$23;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 595
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$24;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$24;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 620
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$25;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$25;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 646
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$26;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$26;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 672
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$27;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$27;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 698
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$28;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$28;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 726
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$29;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$29;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 754
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$30;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$30;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 782
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$31;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$31;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 810
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$32;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$32;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 840
    new-instance v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$33;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves$33;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 867
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    .line 868
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    .line 869
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    .line 878
    const-string v0, "secp112r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 879
    const-string v0, "secp112r2"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 880
    const-string v0, "secp128r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 881
    const-string v0, "secp128r2"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 882
    const-string v0, "secp160k1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 883
    const-string v0, "secp160r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 884
    const-string v0, "secp160r2"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 885
    const-string v0, "secp192k1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 886
    const-string v0, "secp192r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 887
    const-string v0, "secp224k1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 888
    const-string v0, "secp224r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 889
    const-string v0, "secp256k1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 890
    const-string v0, "secp256r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 891
    const-string v0, "secp384r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 892
    const-string v0, "secp521r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 894
    const-string v0, "sect113r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 895
    const-string v0, "sect113r2"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 896
    const-string v0, "sect131r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 897
    const-string v0, "sect131r2"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 898
    const-string v0, "sect163k1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 899
    const-string v0, "sect163r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 900
    const-string v0, "sect163r2"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 901
    const-string v0, "sect193r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 902
    const-string v0, "sect193r2"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 903
    const-string v0, "sect233k1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 904
    const-string v0, "sect233r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 905
    const-string v0, "sect239k1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 906
    const-string v0, "sect283k1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 907
    const-string v0, "sect283r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 908
    const-string v0, "sect409k1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 909
    const-string v0, "sect409r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 910
    const-string v0, "sect571k1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 911
    const-string v0, "sect571r1"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 912
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1
    .parameter "name"
    .parameter "oid"
    .parameter "holder"

    .prologue
    .line 872
    sget-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    return-void
.end method

.method private static fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3
    .parameter "hex"

    .prologue
    .line 19
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 3
    .parameter "name"

    .prologue
    .line 915
    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lmyorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 917
    .local v0, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    if-eqz v0, :cond_0

    .line 918
    invoke-static {v0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 921
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .parameter "oid"

    .prologue
    .line 931
    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 933
    .local v0, holder:Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 937
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .parameter "oid"

    .prologue
    .line 954
    sget-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 2
    .parameter "name"

    .prologue
    .line 947
    sget-object v0, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lmyorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method
