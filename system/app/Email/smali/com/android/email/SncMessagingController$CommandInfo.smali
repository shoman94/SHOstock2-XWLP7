.class Lcom/android/email/SncMessagingController$CommandInfo;
.super Ljava/lang/Object;
.source "SncMessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SncMessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandInfo"
.end annotation


# instance fields
.field mAccountId:J

.field mMailboxId:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 4933
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4934
    iput-wide p1, p0, Lcom/android/email/SncMessagingController$CommandInfo;->mAccountId:J

    .line 4935
    iput-wide p3, p0, Lcom/android/email/SncMessagingController$CommandInfo;->mMailboxId:J

    .line 4936
    return-void
.end method
