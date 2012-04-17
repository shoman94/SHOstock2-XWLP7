.class public final enum Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;
.super Ljava/lang/Enum;
.source "ANSharedCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/ANSharedCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisconnectedReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

.field public static final enum BATTERY_LOW:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

.field public static final enum CONNECTED:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

.field public static final enum FORCED_UPGRADE:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

.field public static final enum MSISDN_VALIDATION_REQUIRED:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

.field public static final enum NO_CONNECTION:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

.field public static final enum PAUSED:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

.field public static final enum PENDING_SERVICE_DISCOVERY:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

.field public static final enum QUIET_TIME:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

.field public static final enum ROAMING:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

.field public static final enum SILENT_DISCONNECTION:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

.field public static final enum TRIGGERS:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;


# instance fields
.field public resource:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0804ac

    .line 132
    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    const-string v1, "CONNECTED"

    const v2, 0x7f0804a5

    invoke-direct {v0, v1, v5, v2}, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->CONNECTED:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    const-string v1, "TRIGGERS"

    const v2, 0x7f0804a6

    invoke-direct {v0, v1, v6, v2}, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->TRIGGERS:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    .line 133
    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    const-string v1, "BATTERY_LOW"

    const v2, 0x7f0804a7

    invoke-direct {v0, v1, v7, v2}, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->BATTERY_LOW:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    .line 134
    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    const-string v1, "ROAMING"

    const v2, 0x7f0804a8

    invoke-direct {v0, v1, v8, v2}, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->ROAMING:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    .line 135
    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    const-string v1, "QUIET_TIME"

    const/4 v2, 0x4

    const v3, 0x7f0804a9

    invoke-direct {v0, v1, v2, v3}, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->QUIET_TIME:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    .line 136
    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    const v3, 0x7f0804aa

    invoke-direct {v0, v1, v2, v3}, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->PAUSED:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    .line 137
    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    const-string v1, "FORCED_UPGRADE"

    const/4 v2, 0x6

    const v3, 0x7f0804ab

    invoke-direct {v0, v1, v2, v3}, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->FORCED_UPGRADE:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    .line 138
    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    const-string v1, "SILENT_DISCONNECTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->SILENT_DISCONNECTION:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    .line 139
    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    const-string v1, "NO_CONNECTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->NO_CONNECTION:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    .line 140
    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    const-string v1, "PENDING_SERVICE_DISCOVERY"

    const/16 v2, 0x9

    const v3, 0x7f0804ab

    invoke-direct {v0, v1, v2, v3}, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->PENDING_SERVICE_DISCOVERY:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    .line 141
    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    const-string v1, "MSISDN_VALIDATION_REQUIRED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v4}, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->MSISDN_VALIDATION_REQUIRED:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    .line 131
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    sget-object v1, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->CONNECTED:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->TRIGGERS:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->BATTERY_LOW:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->ROAMING:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->QUIET_TIME:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->PAUSED:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->FORCED_UPGRADE:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->SILENT_DISCONNECTION:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->NO_CONNECTION:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->PENDING_SERVICE_DISCOVERY:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->MSISDN_VALIDATION_REQUIRED:Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->$VALUES:[Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "resource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput p3, p0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->resource:I

    .line 147
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;
    .locals 1
    .parameter

    .prologue
    .line 131
    const-class v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->$VALUES:[Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;

    return-object v0
.end method
