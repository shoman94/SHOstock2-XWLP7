.class public Lcom/android/mms/ui/ChooseContactSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "ChooseContactSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ChooseContactSelectorAdapter$ChooseContactListItem;
    }
.end annotation


# static fields
.field private static mContactList:Lcom/android/mms/data/ContactList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V
    .locals 1
    .parameter "context"
    .parameter "contactList"

    .prologue
    .line 39
    invoke-static {p1, p2}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;->getData(Landroid/content/Context;Lcom/android/mms/data/ContactList;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 41
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
    .line 63
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/ChooseContactSelectorAdapter$ChooseContactListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/ChooseContactSelectorAdapter$ChooseContactListItem;-><init>(Ljava/lang/String;II)V

    .line 64
    .local v0, temp:Lcom/android/mms/ui/ChooseContactSelectorAdapter$ChooseContactListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method protected static getData(Landroid/content/Context;Lcom/android/mms/data/ContactList;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .parameter "contactList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/data/ContactList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    sput-object p1, Lcom/android/mms/ui/ChooseContactSelectorAdapter;->mContactList:Lcom/android/mms/data/ContactList;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/mms/ui/ChooseContactSelectorAdapter;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .local v1, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const/4 v2, 0x0

    .line 52
    .local v2, i:I
    sget-object v4, Lcom/android/mms/ui/ChooseContactSelectorAdapter;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 53
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v2}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 56
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ChooseContactSelectorAdapter$ChooseContactListItem;

    .line 45
    .local v0, item:Lcom/android/mms/ui/ChooseContactSelectorAdapter$ChooseContactListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/ChooseContactSelectorAdapter$ChooseContactListItem;->getCommand()I

    move-result v1

    return v1
.end method
