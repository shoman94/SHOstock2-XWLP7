.class Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;
.super Ljava/lang/Object;
.source "SncMessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SncMessagingController$ImapIdleFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleStatistics"
.end annotation


# instance fields
.field mInvoked:I

.field mInvokedExpunge:I

.field mSuppressed:I

.field final synthetic this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;


# direct methods
.method private constructor <init>(Lcom/android/email/SncMessagingController$ImapIdleFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 4879
    iput-object p1, p0, Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;->this$1:Lcom/android/email/SncMessagingController$ImapIdleFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/SncMessagingController$ImapIdleFolder;Lcom/android/email/SncMessagingController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4879
    invoke-direct {p0, p1}, Lcom/android/email/SncMessagingController$ImapIdleFolder$IdleStatistics;-><init>(Lcom/android/email/SncMessagingController$ImapIdleFolder;)V

    return-void
.end method
