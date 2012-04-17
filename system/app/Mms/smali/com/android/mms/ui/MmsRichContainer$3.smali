.class Lcom/android/mms/ui/MmsRichContainer$3;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsRichContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$3;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 967
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_0

    .line 969
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 970
    .local v3, parent:Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    .line 971
    const-string v6, "Mms/MmsRichContainer"

    const-string v7, "parent is null !!!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return v5

    .line 975
    .restart local v3       #parent:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 976
    .local v2, page:Landroid/view/ViewGroup;
    if-nez v2, :cond_2

    .line 977
    const-string v6, "Mms/MmsRichContainer"

    const-string v7, "page is null !!!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 981
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 982
    .local v4, richContainer:Landroid/view/ViewGroup;
    if-nez v4, :cond_3

    .line 983
    const-string v6, "Mms/MmsRichContainer"

    const-string v7, "richContainer is null !!!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 987
    :cond_3
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 988
    .local v0, curPage:I
    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer$3;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v7, v0, v6}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 990
    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    .line 991
    .local v1, isSipVisible:Z
    if-nez v1, :cond_4

    .line 992
    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer$3;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v7}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    invoke-virtual {v7, v5, v5}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 993
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$3;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;
    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 994
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$3;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;
    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    :cond_4
    move v5, v6

    .line 996
    goto :goto_0
.end method
