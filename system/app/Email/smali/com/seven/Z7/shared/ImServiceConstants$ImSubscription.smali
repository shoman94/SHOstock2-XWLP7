.class public final enum Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;
.super Ljava/lang/Enum;
.source "ImServiceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/ImServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

.field public static final enum SUBSCRIPTION_ALLOWED:Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

.field public static final enum SUBSCRIPTION_BLOCKED:Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

.field public static final enum SUBSCRIPTION_NONE:Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

.field public static final enum SUBSCRIPTION_PENDNG:Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    const-string v1, "SUBSCRIPTION_NONE"

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;->SUBSCRIPTION_NONE:Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    const-string v1, "SUBSCRIPTION_ALLOWED"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;->SUBSCRIPTION_ALLOWED:Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    const-string v1, "SUBSCRIPTION_BLOCKED"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;->SUBSCRIPTION_BLOCKED:Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    const-string v1, "SUBSCRIPTION_PENDNG"

    invoke-direct {v0, v1, v5}, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;->SUBSCRIPTION_PENDNG:Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;->SUBSCRIPTION_NONE:Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    aput-object v1, v0, v2

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;->SUBSCRIPTION_ALLOWED:Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;->SUBSCRIPTION_BLOCKED:Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;->SUBSCRIPTION_PENDNG:Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    aput-object v1, v0, v5

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;
    .locals 1
    .parameter

    .prologue
    .line 69
    const-class v0, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImSubscription;

    return-object v0
.end method
