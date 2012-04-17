.class Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->onRequest(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2309
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2312
    invoke-static {}, Lcom/android/contacts/editor/PhotoActionPopup;->getlistpopupwindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/contacts/editor/PhotoActionPopup;->getlistpopupwindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2313
    invoke-static {}, Lcom/android/contacts/editor/PhotoActionPopup;->getlistpopupwindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2315
    :cond_0
    return-void
.end method
