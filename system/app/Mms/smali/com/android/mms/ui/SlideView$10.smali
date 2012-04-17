.class Lcom/android/mms/ui/SlideView$10;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->showFileRenameDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;

.field final synthetic val$editField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$10;->this$0:Lcom/android/mms/ui/SlideView;

    iput-object p2, p0, Lcom/android/mms/ui/SlideView$10;->val$editField:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$10;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$3600(Lcom/android/mms/ui/SlideView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$10;->val$editField:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1510
    return-void
.end method
