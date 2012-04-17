.class Lcom/android/email/activity/MessageCompose$10;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 2138
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$10;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2140
    const-string v0, "ToolBarScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$10;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$10;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageCompose;->UpdateRichToolbar(I)V

    .line 2144
    return-void
.end method
