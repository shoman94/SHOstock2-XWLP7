.class public Lcom/android/mms/data/ContactList;
.super Ljava/util/ArrayList;
.source "ContactList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/mms/data/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public specialCharArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "("

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ")"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/data/ContactList;->specialCharArray:[Ljava/lang/String;

    return-void
.end method

.method public static getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;
    .locals 6
    .parameter "spaceSepIds"
    .parameter "canBlock"

    .prologue
    .line 77
    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 78
    .local v3, list:Lcom/android/mms/data/ContactList;
    invoke-static {p0}, Lcom/android/mms/data/RecipientIdCache;->getAddresses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/RecipientIdCache$Entry;

    .line 79
    .local v1, entry:Lcom/android/mms/data/RecipientIdCache$Entry;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    iget-object v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 81
    .local v0, contact:Lcom/android/mms/data/Contact;
    iget-wide v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/data/Contact;->setRecipientId(J)V

    .line 82
    invoke-virtual {v3, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #entry:Lcom/android/mms/data/RecipientIdCache$Entry;
    :cond_1
    return-object v3
.end method

.method public static getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;
    .locals 9
    .parameter "semiSepNumbers"
    .parameter "canBlock"
    .parameter "replaceNumber"

    .prologue
    .line 47
    const-string v6, "Mms/ContactList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getByNumbers(),semiSepNumbers=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",canBlock="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",replaceNumber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v4, Lcom/android/mms/data/ContactList;

    invoke-direct {v4}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 51
    .local v4, list:Lcom/android/mms/data/ContactList;
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 54
    .local v5, number:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 51
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isCBMessageAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isWapPushMessageAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    :cond_2
    invoke-static {v5, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 60
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz p2, :cond_3

    .line 61
    invoke-virtual {v1, v5}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 63
    :cond_3
    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v5           #number:Ljava/lang/String;
    :cond_4
    return-object v4
.end method


# virtual methods
.method public containsEmail()Z
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 130
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const/4 v2, 0x1

    .line 134
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 193
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/ContactList;

    move-object v4, v0

    .line 196
    .local v4, other:Lcom/android/mms/data/ContactList;
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 209
    .end local v4           #other:Lcom/android/mms/data/ContactList;
    :goto_0
    return v5

    .line 201
    .restart local v4       #other:Lcom/android/mms/data/ContactList;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 202
    .local v1, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 207
    .end local v1           #c:Lcom/android/mms/data/Contact;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 208
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #other:Lcom/android/mms/data/ContactList;
    :catch_0
    move-exception v2

    .line 209
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public formatNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "separator"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 98
    .local v4, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 99
    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 100
    .local v0, c:Lcom/android/mms/data/Contact;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 102
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public formattedNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "separator"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 108
    .local v4, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 109
    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 110
    .local v0, c:Lcom/android/mms/data/Contact;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getFormattedName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 112
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumbers(Z)[Ljava/lang/String;
    .locals 5
    .parameter "scrubForMmsAddress"

    .prologue
    .line 151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v3, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 154
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, number:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 168
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getPresenceResId()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getPresenceResId()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 215
    const/4 v0, 0x1

    .line 216
    .local v0, hashCode:I
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/data/Contact;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 220
    .local v2, obj:Ljava/lang/Object;
    mul-int/lit8 v4, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    add-int v0, v4, v3

    .line 221
    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    .line 222
    .end local v2           #obj:Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public isPhoneNumber()Z
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 139
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const/4 v2, 0x1

    .line 143
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reloadContactList()V
    .locals 4

    .prologue
    .line 183
    const-string v2, "Mms/ContactList"

    const-string v3, "reloadContactList()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 186
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    goto :goto_0

    .line 188
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    return-void
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    const-string v0, ";"

    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
