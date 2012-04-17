.class Lcom/android/email/activity/MessageViewFragmentBase$10;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter

    .prologue
    .line 5407
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$10;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0x8

    .line 5410
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$10;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5700(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5411
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$10;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5700(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5417
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$10;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->invalidate()V

    .line 5418
    return-void

    .line 5412
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$10;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5700(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5413
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$10;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5700(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
