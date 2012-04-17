.class Lcom/android/email/activity/ToolBarScrollView$4;
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
    .line 316
    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView$4;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView$4;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v0}, Lcom/android/email/activity/ToolBarScrollView;->access$500(Lcom/android/email/activity/ToolBarScrollView;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/ToolBarScrollView$4;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->OldBGColor:I
    invoke-static {v1}, Lcom/android/email/activity/ToolBarScrollView;->access$600(Lcom/android/email/activity/ToolBarScrollView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/ToolBarScrollView$4;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->OldPicBGColor:I
    invoke-static {v2}, Lcom/android/email/activity/ToolBarScrollView;->access$700(Lcom/android/email/activity/ToolBarScrollView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/ColorPickerDialog;->SetColor(II)V

    .line 320
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView$4;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    #getter for: Lcom/android/email/activity/ToolBarScrollView;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v0}, Lcom/android/email/activity/ToolBarScrollView;->access$500(Lcom/android/email/activity/ToolBarScrollView;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->dismiss()V

    .line 323
    return-void
.end method
