.class Lcom/android/email/MessagingController$23;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->onIdleExists(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6305
    iput-object p1, p0, Lcom/android/email/MessagingController$23;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$23;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p3, p0, Lcom/android/email/MessagingController$23;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 6307
    iget-object v0, p0, Lcom/android/email/MessagingController$23;->this$0:Lcom/android/email/MessagingController;

    const-string v1, "onIdleExists"

    new-instance v2, Lcom/android/email/MessagingController$23$1;

    invoke-direct {v2, p0}, Lcom/android/email/MessagingController$23$1;-><init>(Lcom/android/email/MessagingController$23;)V

    new-instance v3, Lcom/android/email/MessagingController$CommandInfo;

    iget-object v4, p0, Lcom/android/email/MessagingController$23;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v6, p0, Lcom/android/email/MessagingController$23;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/email/MessagingController$CommandInfo;-><init>(JJ)V

    #calls: Lcom/android/email/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/MessagingController$CommandInfo;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->access$1800(Lcom/android/email/MessagingController;Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/MessagingController$CommandInfo;)V

    .line 6313
    return-void
.end method
