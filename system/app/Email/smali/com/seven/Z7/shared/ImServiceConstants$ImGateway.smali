.class public final enum Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;
.super Ljava/lang/Enum;
.source "ImServiceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/ImServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImGateway"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

.field public static final enum GATEWAY_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

.field public static final enum GATEWAY_OFFLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

.field public static final enum GATEWAY_ONLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

.field public static final enum GATEWAY_OVER_TAKEN:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

.field public static final enum GATEWAY_UNKNOWN:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

.field public static final enum GATEWAY_UNREACHABLE:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    const-string v1, "GATEWAY_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->GATEWAY_UNKNOWN:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    const-string v1, "GATEWAY_ONLINE"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->GATEWAY_ONLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    const-string v1, "GATEWAY_OFFLINE"

    invoke-direct {v0, v1, v5}, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->GATEWAY_OFFLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    .line 46
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    const-string v1, "GATEWAY_OVER_TAKEN"

    invoke-direct {v0, v1, v6}, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->GATEWAY_OVER_TAKEN:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    const-string v1, "GATEWAY_UNREACHABLE"

    invoke-direct {v0, v1, v7}, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->GATEWAY_UNREACHABLE:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    const-string v1, "GATEWAY_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->GATEWAY_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->GATEWAY_UNKNOWN:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->GATEWAY_ONLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->GATEWAY_OFFLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    aput-object v1, v0, v5

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->GATEWAY_OVER_TAKEN:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    aput-object v1, v0, v6

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->GATEWAY_UNREACHABLE:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->GATEWAY_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImGateway;

    return-object v0
.end method
