.class Lcom/android/mms/ui/ComposeMessageFragment$21;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->updateSendFailedNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2786
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-wide p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->val$threadId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->val$threadId:J

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotificationForThread(Landroid/content/Context;J)V

    .line 2789
    return-void
.end method
