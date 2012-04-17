.class public Lmyorg/bouncycastle/asn1/x509/CRLReason;
.super Lmyorg/bouncycastle/asn1/DEREnumerated;
.source "CRLReason.java"


# static fields
.field private static final reasonString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/DEREnumerated;-><init>(I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DEREnumerated;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 89
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/DEREnumerated;-><init>(I)V

    .line 90
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/CRLReason;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 95
    .local v0, reason:I
    if-ltz v0, :cond_0

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 96
    :cond_0
    const-string v1, "invalid"

    .line 100
    .local v1, str:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CRLReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 98
    .end local v1           #str:Ljava/lang/String;
    :cond_1
    sget-object v2, Lmyorg/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    aget-object v1, v2, v0

    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0
.end method
