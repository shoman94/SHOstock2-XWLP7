.class Lcom/android/email/activity/MessageListFragment$RefreshListener;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/android/email/RefreshManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 4244
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4244
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment$RefreshListener;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    return-void
.end method


# virtual methods
.method public onMessagingError(JJLjava/lang/String;)V
    .locals 1
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "message"

    .prologue
    .line 4247
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->updateProgressIcon(J)V
    invoke-static {v0, p3, p4}, Lcom/android/email/activity/MessageListFragment;->access$4400(Lcom/android/email/activity/MessageListFragment;J)V

    .line 4248
    return-void
.end method

.method public onRefreshStatusChanged(JJ)V
    .locals 1
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 4252
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->updateListFooter()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$4500(Lcom/android/email/activity/MessageListFragment;)V

    .line 4253
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->updateProgressIcon(J)V
    invoke-static {v0, p3, p4}, Lcom/android/email/activity/MessageListFragment;->access$4400(Lcom/android/email/activity/MessageListFragment;J)V

    .line 4254
    return-void
.end method
