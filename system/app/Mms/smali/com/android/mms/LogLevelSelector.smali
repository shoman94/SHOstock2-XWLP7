.class public Lcom/android/mms/LogLevelSelector;
.super Landroid/app/ListActivity;
.source "LogLevelSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 33
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x109000f

    invoke-static {}, Lcom/android/mms/Log;->getLevelNames()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/LogLevelSelector;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/mms/LogLevelSelector;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 47
    .local v0, listView:Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 49
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 51
    invoke-static {}, Lcom/android/mms/Log;->getCurrentLevel()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 55
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 65
    invoke-static {p3}, Lcom/android/mms/Log;->setLevel(I)V

    .line 69
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 71
    return-void
.end method
