.class public final enum Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;
.super Ljava/lang/Enum;
.source "ImServiceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/ImServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImPresence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

.field public static final enum PRESENCE_AVAILABLE:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

.field public static final enum PRESENCE_AWAY:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

.field public static final enum PRESENCE_BE_RIGHT_BACK:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

.field public static final enum PRESENCE_BUSY:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

.field public static final enum PRESENCE_EXTENDED_AWAY:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

.field public static final enum PRESENCE_INVISIBLE:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

.field public static final enum PRESENCE_OFFLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

.field public static final enum PRESENCE_UNKNOWN:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    const-string v1, "PRESENCE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_UNKNOWN:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    const-string v1, "PRESENCE_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_AVAILABLE:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    const-string v1, "PRESENCE_AWAY"

    invoke-direct {v0, v1, v5}, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_AWAY:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    const-string v1, "PRESENCE_BUSY"

    invoke-direct {v0, v1, v6}, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_BUSY:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    const-string v1, "PRESENCE_BE_RIGHT_BACK"

    invoke-direct {v0, v1, v7}, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_BE_RIGHT_BACK:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    const-string v1, "PRESENCE_EXTENDED_AWAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_EXTENDED_AWAY:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    const-string v1, "PRESENCE_INVISIBLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_INVISIBLE:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    const-string v1, "PRESENCE_OFFLINE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_OFFLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_UNKNOWN:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_AVAILABLE:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_AWAY:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    aput-object v1, v0, v5

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_BUSY:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    aput-object v1, v0, v6

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_BE_RIGHT_BACK:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_EXTENDED_AWAY:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_INVISIBLE:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->PRESENCE_OFFLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;
    .locals 1
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImPresence;

    return-object v0
.end method
