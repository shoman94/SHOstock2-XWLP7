.class public Lcom/android/email/activity/utils/ProgressTracker;
.super Ljava/lang/Object;
.source "ProgressTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mController:Lcom/android/email/Controller;

.field private static mControllerResults:Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;

.field private static mPendingDPMAccount:J

.field private static mThis:Lcom/android/email/activity/utils/ProgressTracker;


# instance fields
.field private mMailboxListProgress:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMailboxProgress:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/android/email/activity/utils/ProgressTracker;->mThis:Lcom/android/email/activity/utils/ProgressTracker;

    .line 43
    sput-object v0, Lcom/android/email/activity/utils/ProgressTracker;->mControllerResults:Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;

    .line 44
    sput-object v0, Lcom/android/email/activity/utils/ProgressTracker;->mController:Lcom/android/email/Controller;

    .line 45
    sput-object v0, Lcom/android/email/activity/utils/ProgressTracker;->mContext:Landroid/content/Context;

    .line 293
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/utils/ProgressTracker;->mPendingDPMAccount:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/utils/ProgressTracker;->mMailboxListProgress:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/utils/ProgressTracker;->mMailboxProgress:Ljava/util/HashMap;

    .line 69
    sput-object p1, Lcom/android/email/activity/utils/ProgressTracker;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/utils/ProgressTracker;->mController:Lcom/android/email/Controller;

    .line 71
    new-instance v0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;-><init>(Lcom/android/email/activity/utils/ProgressTracker;)V

    sput-object v0, Lcom/android/email/activity/utils/ProgressTracker;->mControllerResults:Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/utils/ProgressTracker;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/email/activity/utils/ProgressTracker;->mMailboxListProgress:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/email/activity/utils/ProgressTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/email/Controller;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/email/activity/utils/ProgressTracker;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/utils/ProgressTracker;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/email/activity/utils/ProgressTracker;->mMailboxProgress:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/email/activity/utils/ProgressTracker;
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    sget-object v0, Lcom/android/email/activity/utils/ProgressTracker;->mThis:Lcom/android/email/activity/utils/ProgressTracker;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/email/activity/utils/ProgressTracker;

    invoke-direct {v0, p0}, Lcom/android/email/activity/utils/ProgressTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/activity/utils/ProgressTracker;->mThis:Lcom/android/email/activity/utils/ProgressTracker;

    .line 54
    sget-object v0, Lcom/android/email/activity/utils/ProgressTracker;->mController:Lcom/android/email/Controller;

    sget-object v1, Lcom/android/email/activity/utils/ProgressTracker;->mControllerResults:Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 57
    :cond_0
    sget-object v0, Lcom/android/email/activity/utils/ProgressTracker;->mThis:Lcom/android/email/activity/utils/ProgressTracker;

    return-object v0
.end method

.method public static showDPMIfNeeded(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, -0x1

    .line 296
    sget-wide v1, Lcom/android/email/activity/utils/ProgressTracker;->mPendingDPMAccount:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    .line 298
    sget-wide v1, Lcom/android/email/activity/utils/ProgressTracker;->mPendingDPMAccount:J

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 300
    .local v0, securityIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 301
    sput-wide v4, Lcom/android/email/activity/utils/ProgressTracker;->mPendingDPMAccount:J

    .line 304
    .end local v0           #securityIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
