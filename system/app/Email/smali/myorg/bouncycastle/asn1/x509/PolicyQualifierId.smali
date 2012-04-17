.class public Lmyorg/bouncycastle/asn1/x509/PolicyQualifierId;
.super Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
.source "PolicyQualifierId.java"


# static fields
.field public static final id_qt_cps:Lmyorg/bouncycastle/asn1/x509/PolicyQualifierId;

.field public static final id_qt_unotice:Lmyorg/bouncycastle/asn1/x509/PolicyQualifierId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/PolicyQualifierId;

    const-string v1, "1.3.6.1.5.5.7.2.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_cps:Lmyorg/bouncycastle/asn1/x509/PolicyQualifierId;

    .line 25
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/PolicyQualifierId;

    const-string v1, "1.3.6.1.5.5.7.2.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_unotice:Lmyorg/bouncycastle/asn1/x509/PolicyQualifierId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method
