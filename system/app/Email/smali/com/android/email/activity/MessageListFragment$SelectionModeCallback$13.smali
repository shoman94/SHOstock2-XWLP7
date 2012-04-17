.class Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$13;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->onDeleteSmsPopup()V
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
    .line 4210
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$13;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4213
    const/4 v0, 0x0

    sput v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    .line 4214
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$13;->this$1:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 4215
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4216
    return-void
.end method
