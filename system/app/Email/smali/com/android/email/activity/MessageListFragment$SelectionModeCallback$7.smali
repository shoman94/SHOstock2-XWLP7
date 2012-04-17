.class Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$7;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 3924
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$7;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3927
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$7;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->onConversationIgnore()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$3900(Lcom/android/email/activity/MessageListFragment;)V

    .line 3928
    return-void
.end method
