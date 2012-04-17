.class Lcom/android/email/activity/MessageListFragment$11;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->onFlickDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 4541
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$11;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4544
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$11;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$11;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$3600(Lcom/android/email/activity/MessageListFragment;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/email/activity/MessageListFragment;->checkTimeOut(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$4800(Lcom/android/email/activity/MessageListFragment;Landroid/content/Context;)V

    .line 4545
    return-void
.end method
