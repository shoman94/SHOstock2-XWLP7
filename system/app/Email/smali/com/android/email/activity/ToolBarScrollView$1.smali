.class Lcom/android/email/activity/ToolBarScrollView$1;
.super Ljava/lang/Object;
.source "ToolBarScrollView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ToolBarScrollView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ToolBarScrollView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ToolBarScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView$1;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView$1;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v1}, Lcom/android/email/activity/ToolBarScrollView;->access$100(Lcom/android/email/activity/ToolBarScrollView;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView$1;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v2}, Lcom/android/email/activity/ToolBarScrollView;->access$100(Lcom/android/email/activity/ToolBarScrollView;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, test:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView$1;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v1}, Lcom/android/email/activity/ToolBarScrollView;->access$200(Lcom/android/email/activity/ToolBarScrollView;)Landroid/webkit/HtmlComposerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/HtmlComposerView;->changeFontColorForSelection(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView$1;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    iget-object v1, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontColorPreview:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView$1;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v2}, Lcom/android/email/activity/ToolBarScrollView;->access$100(Lcom/android/email/activity/ToolBarScrollView;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 271
    .end local v0           #test:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView$1;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v1}, Lcom/android/email/activity/ToolBarScrollView;->access$100(Lcom/android/email/activity/ToolBarScrollView;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ColorPickerDialog;->dismiss()V

    .line 272
    return-void
.end method
