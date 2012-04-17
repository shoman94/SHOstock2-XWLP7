.class Lcom/android/contacts/editor/RawContactEditorView$1;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/RawContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView$1;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    #calls: Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V
    invoke-static {v0}, Lcom/android/contacts/editor/RawContactEditorView;->access$000(Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 179
    return-void
.end method
