.class public Lcom/android/email/TextSelectorForHtmlComposer$SingleCursorTimerTask;
.super Ljava/util/TimerTask;
.source "TextSelectorForHtmlComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/TextSelectorForHtmlComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SingleCursorTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/TextSelectorForHtmlComposer;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$SingleCursorTimerTask;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;
    invoke-static {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->access$000(Lcom/android/email/TextSelectorForHtmlComposer;)Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$SingleCursorTimerTask;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #calls: Lcom/android/email/TextSelectorForHtmlComposer;->createToolTip(Z)V
    invoke-static {v0, v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$100(Lcom/android/email/TextSelectorForHtmlComposer;Z)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$SingleCursorTimerTask;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mToolTipMenu:Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;
    invoke-static {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->access$000(Lcom/android/email/TextSelectorForHtmlComposer;)Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->show()V

    .line 63
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$SingleCursorTimerTask;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #setter for: Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z
    invoke-static {v0, v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$202(Lcom/android/email/TextSelectorForHtmlComposer;Z)Z

    .line 64
    return-void
.end method
