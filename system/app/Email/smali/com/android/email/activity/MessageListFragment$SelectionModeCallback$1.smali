.class Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;
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
    .line 3782
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3785
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiMove()V

    .line 3786
    return-void
.end method
