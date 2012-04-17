.class Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;)V
    .locals 0
    .parameter

    .prologue
    .line 10614
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1$1;->this$2:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0x8

    .line 10617
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1$1;->this$2:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 10618
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1$1;->this$2:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10622
    :cond_0
    :goto_0
    return-void

    .line 10619
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1$1;->this$2:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 10620
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1$1;->this$2:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
