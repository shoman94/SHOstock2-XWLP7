.class public Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;
.super Ljava/security/BasicPermission;
.source "ProviderConfigurationPermission.java"


# instance fields
.field private final actions:Ljava/lang/String;

.field private final permissionMask:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v0, "all"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p2, p0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    .line 55
    invoke-direct {p0, p2}, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->calculateMask(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    .line 56
    return-void
.end method

.method private calculateMask(Ljava/lang/String;)I
    .locals 5
    .parameter "actions"

    .prologue
    .line 59
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " ,"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v2, tok:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 62
    .local v0, mask:I
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, s:Ljava/lang/String;
    const-string v3, "threadlocalecimplicitlyca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const-string v3, "ecimplicitlyca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 69
    :cond_2
    const-string v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 74
    .end local v1           #s:Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 75
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "unknown permissions passed to mask"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_4
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p1, p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    instance-of v3, p1, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 105
    check-cast v0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;

    .line 107
    .local v0, other:Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;
    iget v3, p0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    iget v4, v0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #other:Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;
    :cond_3
    move v1, v2

    .line 111
    goto :goto_0
.end method

.method public getActions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    add-int/2addr v0, v1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 4
    .parameter "permission"

    .prologue
    const/4 v1, 0x0

    .line 86
    instance-of v2, p1, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;

    if-nez v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 94
    check-cast v0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;

    .line 96
    .local v0, other:Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;
    iget v2, p0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    iget v3, v0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    and-int/2addr v2, v3

    iget v3, v0, Lmyorg/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
