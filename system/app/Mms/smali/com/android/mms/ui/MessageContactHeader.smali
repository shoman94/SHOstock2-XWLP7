.class public Lcom/android/mms/ui/MessageContactHeader;
.super Landroid/widget/LinearLayout;
.source "MessageContactHeader.java"


# instance fields
.field private mContactList:Lcom/android/mms/data/ContactList;

.field protected mContext:Landroid/content/Context;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageContactHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mExcludeMimes:[Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public bindContactHeader(Lcom/android/mms/data/ContactList;)Z
    .locals 6
    .parameter "contactList"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 73
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactList:Lcom/android/mms/data/ContactList;

    .line 76
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageContactHeader;->invalidate()V

    .line 78
    if-nez p1, :cond_0

    .line 149
    :goto_0
    return v3

    .line 82
    :cond_0
    const-string v2, ""

    .line 85
    .local v2, recipient:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 86
    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 87
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, addr:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isOnlineLocker()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isOnlineAlbum()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v2

    .line 148
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageContactHeader;->setDisplayName(Ljava/lang/CharSequence;)V

    move v3, v4

    .line 149
    goto :goto_0

    .line 93
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_3
    const-string v3, "CBmessages"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    iget-object v3, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    const v5, 0x7f090123

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 98
    :cond_4
    const-string v3, "Push message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 100
    iget-object v3, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    const v5, 0x7f09019f

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 120
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 127
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v4, :cond_2

    .line 131
    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public init()V
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageContactHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mNameView:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method public setContactList(Lcom/android/mms/data/ContactList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactList:Lcom/android/mms/data/ContactList;

    .line 155
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "displayName"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method
