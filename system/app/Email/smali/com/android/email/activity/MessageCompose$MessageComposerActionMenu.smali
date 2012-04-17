.class Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;
.super Landroid/webkit/SelectActionModeCallbackSec;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageComposerActionMenu"
.end annotation


# instance fields
.field private isFinish:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mDisableCopyNCut:Z

.field private mRecreate:Z

.field private mWebView:Landroid/webkit/HtmlComposerView;

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 11889
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/webkit/SelectActionModeCallbackSec;-><init>()V

    .line 11894
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mDisableCopyNCut:Z

    .line 11896
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->isFinish:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11889
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 12060
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 12061
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 12062
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mActionMode:Landroid/view/ActionMode;

    .line 12064
    :cond_0
    return-void
.end method

.method finish(Z)V
    .locals 0
    .parameter "recreate"

    .prologue
    .line 12068
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mRecreate:Z

    .line 12069
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->finish()V

    .line 12070
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 12001
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 12034
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 12003
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    const v2, 0x102001f

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 12004
    invoke-virtual {p0, p1, v3}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    goto :goto_0

    .line 12009
    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    const v2, 0x1020022

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 12010
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 12014
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mDisableCopyNCut:Z

    if-nez v1, :cond_0

    .line 12015
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    const v2, 0x1020020

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 12017
    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 12021
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mDisableCopyNCut:Z

    if-nez v1, :cond_1

    .line 12022
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    const v2, 0x1020021

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 12024
    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 12028
    :sswitch_4
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    const v2, 0x102040a

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 12029
    invoke-virtual {p0, p1, v3}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    goto :goto_0

    .line 12001
    nop

    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_3
        0x1020022 -> :sswitch_1
        0x1020241 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v7, 0x6

    const/4 v3, 0x0

    .line 11910
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->this$0:Lcom/android/email/activity/MessageCompose;

    sget-object v6, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageCompose;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 11913
    .local v2, styledAttributes:Landroid/content/res/TypedArray;
    const v5, 0x102001f

    const v6, 0x104000d

    invoke-interface {p2, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x61

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11919
    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mDisableCopyNCut:Z

    if-nez v5, :cond_1

    .line 11920
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->canCut()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11921
    const v5, 0x1020020

    const v6, 0x1040003

    invoke-interface {p2, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x78

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11929
    :cond_0
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->canCopy()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11930
    const v5, 0x1020021

    const v6, 0x1040001

    invoke-interface {p2, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x63

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11940
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11941
    const v5, 0x1020022

    const v6, 0x104000b

    invoke-interface {p2, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x76

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11950
    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11951
    const v5, 0x1020241

    const v6, 0x10405b6

    invoke-interface {p2, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x70

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11960
    :cond_3
    const/4 v1, 0x4

    .line 11961
    .local v1, mMaxActionModeItems:I
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v5

    if-lt v5, v8, :cond_4

    .line 11962
    const/4 v0, 0x3

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 11963
    invoke-interface {p2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 11962
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11968
    .end local v0           #i:I
    :cond_4
    const-string v5, "Compose >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateActionMode: spellcheckmode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", word selected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$12700(Lcom/android/email/activity/MessageCompose;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11971
    sget-boolean v5, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageCompose;->isExpiredSpellCheckMode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 11981
    :goto_1
    return v3

    .line 11975
    :cond_5
    sget-boolean v5, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$12700(Lcom/android/email/activity/MessageCompose;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 11976
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->doSpellCheck()V
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$12800(Lcom/android/email/activity/MessageCompose;)V

    goto :goto_1

    .line 11980
    :cond_6
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mActionMode:Landroid/view/ActionMode;

    move v3, v4

    .line 11981
    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 12041
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mRecreate:Z

    if-nez v0, :cond_0

    .line 12042
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 12043
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    .line 12047
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->SetContextMenuVisible(Z)V

    .line 12051
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mRecreate:Z

    .line 12054
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 11990
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->initComposerState()V

    .line 11992
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->SetContextMenuVisible(Z)V

    .line 11996
    return v1
.end method

.method public setDisableCopyNCut(Z)V
    .locals 0
    .parameter "DisableCopyNCut"

    .prologue
    .line 12073
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mDisableCopyNCut:Z

    .line 12074
    return-void
.end method

.method protected setWebView(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 11985
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    .line 11986
    return-void
.end method
