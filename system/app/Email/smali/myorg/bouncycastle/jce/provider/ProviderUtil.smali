.class public Lmyorg/bouncycastle/jce/provider/ProviderUtil;
.super Ljava/lang/Object;
.source "ProviderUtil.java"


# static fields
.field private static BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_PERMISSION:Ljava/security/Permission;

.field private static final MAX_MEMORY:J

.field private static volatile ecImplicitCaParams:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

.field private static threadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->MAX_MEMORY:J

    .line 17
    new-instance v0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;

    const-string v1, "myBC"

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 19
    new-instance v0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;

    const-string v1, "myBC"

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->BC_EC_PERMISSION:Ljava/security/Permission;

    .line 22
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 64
    sget-object v1, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->threadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 66
    .local v0, spec:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    if-eqz v0, :cond_0

    .line 70
    .end local v0           #spec:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    :goto_0
    return-object v0

    .restart local v0       #spec:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    :cond_0
    sget-object v0, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->ecImplicitCaParams:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_0
.end method

.method static getReadLimit(Ljava/io/InputStream;)I
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 82
    :goto_0
    return v0

    .line 78
    :cond_0
    sget-wide v0, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->MAX_MEMORY:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 79
    const v0, 0x7fffffff

    goto :goto_0

    .line 82
    :cond_1
    sget-wide v0, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->MAX_MEMORY:J

    long-to-int v0, v0

    goto :goto_0
.end method
