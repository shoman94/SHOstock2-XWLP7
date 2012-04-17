.class public Lmyorg/bouncycastle/util/IPTest;
.super Ljunit/framework/TestCase;
.source "IPTest.java"


# static fields
.field private static final invalidIP4v:[Ljava/lang/String;

.field private static final invalidIP6v:[Ljava/lang/String;

.field private static final validIP4v:[Ljava/lang/String;

.field private static final validIP6v:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "0.0.0.0"

    aput-object v1, v0, v3

    const-string v1, "255.255.255.255"

    aput-object v1, v0, v4

    const-string v1, "192.168.0.0"

    aput-object v1, v0, v5

    sput-object v0, Lmyorg/bouncycastle/util/IPTest;->validIP4v:[Ljava/lang/String;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0.0.0.0.1"

    aput-object v1, v0, v3

    const-string v1, "256.255.255.255"

    aput-object v1, v0, v4

    const-string v1, "1"

    aput-object v1, v0, v5

    const-string v1, "A.B.C"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "1:.4.6.5"

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/util/IPTest;->invalidIP4v:[Ljava/lang/String;

    .line 16
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "0:0:0:0:0:0:0:0"

    aput-object v1, v0, v3

    const-string v1, "FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF"

    aput-object v1, v0, v4

    const-string v1, "0:1:2:3:FFFF:5:FFFF:1"

    aput-object v1, v0, v5

    sput-object v0, Lmyorg/bouncycastle/util/IPTest;->validIP6v:[Ljava/lang/String;

    .line 20
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "0.0.0.0:1"

    aput-object v1, v0, v3

    const-string v1, "FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFFF"

    aput-object v1, v0, v4

    sput-object v0, Lmyorg/bouncycastle/util/IPTest;->invalidIP6v:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "IPTest"

    return-object v0
.end method
