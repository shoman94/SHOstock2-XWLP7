.class Lcom/android/mms/ui/SearchActivity$2;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iput-object p3, p0, Lcom/android/mms/ui/SearchActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/16 v6, 0x1e

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 283
    const-string v4, "Mms/SearchActivity"

    const-string v5, "onQueryComplete"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    if-nez p3, :cond_0

    .line 318
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .local v0, cursorCount:I
    move-object v2, p2

    .line 291
    check-cast v2, Ljava/lang/String;

    .line 293
    .local v2, searchString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_2

    invoke-virtual {v2, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, titleString:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0001

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v3, v7, v9

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchListAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/mms/ui/SearchListAdapter;->setSearchString(Ljava/lang/String;)V

    .line 299
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    #setter for: Lcom/android/mms/ui/SearchActivity;->mHighlightString:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/mms/ui/SearchActivity;->access$202(Lcom/android/mms/ui/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchListAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/mms/ui/SearchListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 303
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 304
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 305
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->requestFocus()Z

    .line 308
    if-lez v0, :cond_1

    .line 309
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/android/mms/MmsApp;

    invoke-virtual {v4}, Lcom/android/mms/MmsApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v1

    .line 311
    .local v1, recent:Landroid/provider/SearchRecentSuggestions;
    if-eqz v1, :cond_1

    .line 312
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v5, 0x7f0900fe

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v2, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/ui/SearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v1           #recent:Landroid/provider/SearchRecentSuggestions;
    :cond_1
    const-string v4, "Mms/SearchActivity"

    const-string v5, "onQueryComplete"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3           #titleString:Ljava/lang/String;
    :cond_2
    move-object v3, v2

    .line 293
    goto :goto_1
.end method
