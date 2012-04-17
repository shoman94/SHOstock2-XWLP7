.class Lcom/android/contacts/editor/LabeledEditorView$2$1;
.super Ljava/lang/Object;
.source "LabeledEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/LabeledEditorView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/LabeledEditorView$2;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 153
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 162
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z
    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$000(Lcom/android/contacts/editor/LabeledEditorView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;
    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v1, v1, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;
    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView$2$1;->this$1:Lcom/android/contacts/editor/LabeledEditorView$2;

    iget-object v2, v2, Lcom/android/contacts/editor/LabeledEditorView$2;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-interface {v1, v2}, Lcom/android/contacts/editor/Editor$EditorListener;->onDeleteRequested(Lcom/android/contacts/editor/Editor;)V

    goto :goto_0
.end method
