.class Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckTask;
.super Landroid/os/AsyncTask;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/utils/spellcheck/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mMessageContentView:Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;

.field final synthetic this$0:Lcom/android/email/activity/utils/spellcheck/SpellChecker;


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 274
    check-cast p1, [Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckTask;->doInBackground([Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 279
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckTask;->mMessageContentView:Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;

    .line 280
    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckTask;->this$0:Lcom/android/email/activity/utils/spellcheck/SpellChecker;

    iget-object v1, p0, Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckTask;->mMessageContentView:Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;

    #calls: Lcom/android/email/activity/utils/spellcheck/SpellChecker;->initSuggest(Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;)V
    invoke-static {v0, v1}, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->access$100(Lcom/android/email/activity/utils/spellcheck/SpellChecker;Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;)V

    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 274
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "dummy"

    .prologue
    .line 286
    invoke-static {}, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->access$200()I

    move-result v0

    if-nez v0, :cond_0

    .line 287
    invoke-static {}, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->access$400()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckerWordCallback;

    invoke-static {}, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->access$300()Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckerWordCallback;->inValidWordList(Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;)V

    .line 289
    :cond_0
    return-void
.end method
