.class final enum Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;
.super Ljava/lang/Enum;
.source "PreferenceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/PreferenceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PreferenceGroups"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

.field public static final enum API:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

.field public static final enum EMAIL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

.field public static final enum IM:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

.field public static final enum LOG:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

.field public static final enum NOTIFICATIONS:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

.field public static final enum PAUSE:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

.field public static final enum PRESET_MESSAGES:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

.field public static final enum QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    const-string v1, "QUIET_TIME"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    const-string v1, "PRESET_MESSAGES"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->PRESET_MESSAGES:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    const-string v1, "NOTIFICATIONS"

    invoke-direct {v0, v1, v5}, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->NOTIFICATIONS:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    const-string v1, "LOG"

    invoke-direct {v0, v1, v6}, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->LOG:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v7}, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->PAUSE:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    const-string v1, "EMAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->EMAIL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    const-string v1, "IM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->IM:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    new-instance v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    const-string v1, "API"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->API:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    .line 15
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->QUIET_TIME:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->PRESET_MESSAGES:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->NOTIFICATIONS:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    aput-object v1, v0, v5

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->LOG:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    aput-object v1, v0, v6

    sget-object v1, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->PAUSE:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->EMAIL:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->IM:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->API:Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->$VALUES:[Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->$VALUES:[Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/PreferenceConstants$PreferenceGroups;

    return-object v0
.end method
