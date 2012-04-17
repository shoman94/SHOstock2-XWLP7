.class public Lmyorg/bouncycastle/asn1/cmp/PKIStatus;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PKIStatus.java"


# static fields
.field public static final granted:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

.field public static final grantedWithMods:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

.field public static final keyUpdateWaiting:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

.field public static final rejection:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

.field public static final revocationNotification:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

.field public static final revocationWarning:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

.field public static final waiting:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;


# instance fields
.field private value:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;->granted:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 18
    new-instance v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;->grantedWithMods:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 19
    new-instance v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;->rejection:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 20
    new-instance v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;->waiting:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 21
    new-instance v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;->revocationWarning:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 22
    new-instance v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;->revocationNotification:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 23
    new-instance v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;->keyUpdateWaiting:Lmyorg/bouncycastle/asn1/cmp/PKIStatus;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 28
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(Lmyorg/bouncycastle/asn1/DERInteger;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lmyorg/bouncycastle/asn1/DERInteger;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 31
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 32
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;->value:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 33
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cmp/PKIStatus;->value:Lmyorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method
