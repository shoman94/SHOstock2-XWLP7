.class Lcom/android/email/activity/MessageViewFragment$4;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$4;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$4;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #calls: Lcom/android/email/activity/MessageViewFragment;->onForward()V
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$300(Lcom/android/email/activity/MessageViewFragment;)V

    .line 705
    return-void
.end method
