.class public final enum Lcom/seven/Z7/shared/ImServiceConstants$ImMode;
.super Ljava/lang/Enum;
.source "ImServiceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/ImServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/ImServiceConstants$ImMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

.field public static final enum MODE_INACTIVE:Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

.field public static final enum MODE_OFFLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

.field public static final enum MODE_ONLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    const-string v1, "MODE_OFFLINE"

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;->MODE_OFFLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    const-string v1, "MODE_INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;->MODE_INACTIVE:Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    const-string v1, "MODE_ONLINE"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;->MODE_ONLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;->MODE_OFFLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;->MODE_INACTIVE:Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;->MODE_ONLINE:Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/ImServiceConstants$ImMode;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/ImServiceConstants$ImMode;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImMode;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/ImServiceConstants$ImMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImMode;

    return-object v0
.end method
