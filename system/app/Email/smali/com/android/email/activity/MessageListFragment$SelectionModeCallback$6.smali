.class Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$6;
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
    .line 3908
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$6;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3912
    sget v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    if-lez v0, :cond_0

    .line 3913
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$6;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    #calls: Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->onDeleteSmsPopup()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->access$3800(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    .line 3917
    :goto_0
    return-void

    .line 3916
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$6;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete()V

    goto :goto_0
.end method
