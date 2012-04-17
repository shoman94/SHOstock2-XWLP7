.class Lcom/android/email/MessagingController$CommandInfo;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandInfo"
.end annotation


# instance fields
.field mAccountId:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 6273
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6274
    iput-wide p1, p0, Lcom/android/email/MessagingController$CommandInfo;->mAccountId:J

    .line 6276
    return-void
.end method
