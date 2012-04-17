.class public final enum Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;
.super Ljava/lang/Enum;
.source "ImServiceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/ImServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImMessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

.field public static final enum INSTANT_MESSAGE_CHAT:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

.field public static final enum INSTANT_MESSAGE_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

.field public static final enum INSTANT_MESSAGE_GROUPCHAT:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

.field public static final enum INSTANT_MESSAGE_HEADLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

.field public static final enum INSTANT_MESSAGE_NORMAL:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    const-string v1, "INSTANT_MESSAGE_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->INSTANT_MESSAGE_NORMAL:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    const-string v1, "INSTANT_MESSAGE_CHAT"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->INSTANT_MESSAGE_CHAT:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    const-string v1, "INSTANT_MESSAGE_GROUPCHAT"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->INSTANT_MESSAGE_GROUPCHAT:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    const-string v1, "INSTANT_MESSAGE_HEADLINE"

    invoke-direct {v0, v1, v5}, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->INSTANT_MESSAGE_HEADLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    const-string v1, "INSTANT_MESSAGE_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->INSTANT_MESSAGE_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->INSTANT_MESSAGE_NORMAL:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->INSTANT_MESSAGE_CHAT:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->INSTANT_MESSAGE_GROUPCHAT:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->INSTANT_MESSAGE_HEADLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->INSTANT_MESSAGE_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;
    .locals 1
    .parameter

    .prologue
    .line 60
    const-class v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImMessageType;

    return-object v0
.end method
