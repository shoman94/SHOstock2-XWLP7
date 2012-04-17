.class public Lcom/android/mms/ui/ToButtonMenuAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "ToButtonMenuAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isNumberInContacts"

    .prologue
    .line 33
    invoke-static {p1, p2}, Lcom/android/mms/ui/ToButtonMenuAdapter;->getData(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 34
    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "resource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-direct {v0, p1, p2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;I)V

    .line 47
    .local v0, temp:Lcom/android/mms/ui/IconListAdapter$IconListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method protected static getData(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "isNumberInContacts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const v1, 0x7f090098

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ToButtonMenuAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 39
    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ToButtonMenuAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 40
    if-nez p1, :cond_0

    .line 41
    const v1, 0x7f090067

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ToButtonMenuAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 42
    :cond_0
    return-object v0
.end method
