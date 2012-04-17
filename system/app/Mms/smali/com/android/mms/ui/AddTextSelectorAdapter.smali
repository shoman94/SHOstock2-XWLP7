.class public Lcom/android/mms/ui/AddTextSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AddTextSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-static {p1}, Lcom/android/mms/ui/AddTextSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 28
    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "resource"
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;-><init>(Ljava/lang/String;II)V

    .line 70
    .local v0, temp:Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const-string v1, "com.google.android.apps.maps"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const v1, 0x7f0901b1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020051

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 42
    :cond_0
    const-string v1, "com.android.contacts"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    const v1, 0x7f090156

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02004f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 49
    :cond_1
    const-string v1, "com.sec.android.app.memo"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    const v1, 0x7f090158

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020052

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 55
    :cond_2
    const-string v1, "com.android.task"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    const v1, 0x7f0901ae

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02005b

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 58
    :cond_3
    const-string v1, "com.android.calendar"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    const v1, 0x7f090157

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02004c

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 65
    :cond_4
    return-object v0
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AddTextSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;

    .line 32
    .local v0, item:Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;->getCommand()I

    move-result v1

    return v1
.end method
