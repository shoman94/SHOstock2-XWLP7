.class Lcom/android/email/activity/ToolBarScrollView$5;
.super Ljava/lang/Object;
.source "ToolBarScrollView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ToolBarScrollView;->ChangeFontSizeDialog()V
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
    .line 504
    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView$5;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView$5;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    add-int/lit8 v2, p2, 0x1

    #setter for: Lcom/android/email/activity/ToolBarScrollView;->FontSize:I
    invoke-static {v1, v2}, Lcom/android/email/activity/ToolBarScrollView;->access$902(Lcom/android/email/activity/ToolBarScrollView;I)I

    .line 507
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView$5;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->FontSize:I
    invoke-static {v1}, Lcom/android/email/activity/ToolBarScrollView;->access$900(Lcom/android/email/activity/ToolBarScrollView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, mSize:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView$5;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v1}, Lcom/android/email/activity/ToolBarScrollView;->access$200(Lcom/android/email/activity/ToolBarScrollView;)Landroid/webkit/HtmlComposerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/HtmlComposerView;->changeFontSizeForSelection(Ljava/lang/String;)V

    .line 509
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 510
    return-void
.end method
