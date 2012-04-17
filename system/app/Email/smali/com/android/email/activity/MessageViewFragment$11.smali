.class Lcom/android/email/activity/MessageViewFragment$11;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment;->setupReplyAllView()V
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
    .line 1318
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$11;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1321
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 1322
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$11;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->onReply()V

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$11;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->onReplyAll()V

    goto :goto_0
.end method
