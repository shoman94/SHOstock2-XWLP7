.class public Lcom/seven/Z7/common/resources/ResourceStorage;
.super Ljava/lang/Object;
.source "ResourceStorage.java"


# static fields
.field private static final RESOURCE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "resource_uid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "resource_base_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "provisioning_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "locale"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/common/resources/ResourceStorage;->RESOURCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method
