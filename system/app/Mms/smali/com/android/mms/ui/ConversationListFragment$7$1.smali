.class Lcom/android/mms/ui/ConversationListFragment$7$1;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationListFragment$7;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$7$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 562
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$7$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$7;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListFragment$7;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 563
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$7$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$7;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListFragment$7;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 564
    return-void
.end method
