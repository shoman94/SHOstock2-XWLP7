.class Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter$1;
.super Ljava/lang/Object;
.source "ToolBarScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;

.field final synthetic val$check:Landroid/widget/RadioButton;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;ILandroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter$1;->this$1:Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;

    iput p2, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter$1;->val$check:Landroid/widget/RadioButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter$1;->this$1:Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;

    iget-object v0, v0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/email/activity/ToolBarScrollView;->access$1200(Lcom/android/email/activity/ToolBarScrollView;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter$1;->val$check:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 619
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter$1;->this$1:Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;

    iget-object v0, v0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v0}, Lcom/android/email/activity/ToolBarScrollView;->access$200(Lcom/android/email/activity/ToolBarScrollView;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/ToolBarScrollView;->access$1000()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter$1;->val$position:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->changeFontSizeForSelection(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter$1;->this$1:Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;

    iget-object v0, v0, Lcom/android/email/activity/ToolBarScrollView$FontSizeForRichAdapter;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    iget-object v0, v0, Lcom/android/email/activity/ToolBarScrollView;->FontSizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 621
    return-void
.end method
