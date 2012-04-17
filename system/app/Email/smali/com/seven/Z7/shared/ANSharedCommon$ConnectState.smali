.class public final enum Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;
.super Ljava/lang/Enum;
.source "ANSharedCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/ANSharedCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

.field public static final enum CONNECTED:Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

.field public static final enum DISCONNECTED:Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

.field public static final enum INIT:Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

.field public static final enum NOT_CONNECTED:Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;->INIT:Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;->CONNECTED:Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;->DISCONNECTED:Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    new-instance v0, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;->NOT_CONNECTED:Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    .line 127
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    sget-object v1, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;->INIT:Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;->CONNECTED:Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;->DISCONNECTED:Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;->NOT_CONNECTED:Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;->$VALUES:[Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;
    .locals 1
    .parameter

    .prologue
    .line 127
    const-class v0, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;->$VALUES:[Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;

    return-object v0
.end method
