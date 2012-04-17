.class Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->onPostExecute(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

.field final synthetic val$templateIds:[Ljava/lang/String;

.field final synthetic val$templates:[Ljava/lang/String;

.field final synthetic val$templatesDescription:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10603
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->val$templateIds:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->val$templates:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->val$templatesDescription:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v2, 0x8

    .line 10606
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->val$templateIds:[Ljava/lang/String;

    aget-object v1, v1, p2

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 10608
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 10609
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->val$templates:[Ljava/lang/String;

    aget-object v1, v1, p2

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$1302(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 10610
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->val$templatesDescription:[Ljava/lang/String;

    aget-object v1, v1, p2

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$1202(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 10611
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10612
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->templateDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$11700(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1200(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10614
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1$1;-><init>(Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10628
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 10629
    return-void

    .line 10625
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10626
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
