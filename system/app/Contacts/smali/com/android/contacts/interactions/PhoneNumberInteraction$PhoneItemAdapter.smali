.class Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PhoneNumberInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/PhoneNumberInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private final mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "interactionType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;",
            "Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;>;"
    const v0, 0x7f04009d

    const v1, 0x1020015

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 154
    iput-object p3, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    .line 155
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 156
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 162
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    .line 163
    .local v2, item:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    iget-object v7, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v8, v2, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->dataSet:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 165
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    const v7, 0x1020014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 166
    .local v4, typeView:Landroid/widget/TextView;
    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v7}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 167
    .local v3, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v3, :cond_1

    .line 168
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "data2"

    iget-wide v8, v2, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    const-string v7, "data3"

    iget-object v8, v2, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v7, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    sget-object v8, Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;->SMS:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    if-ne v7, v8, :cond_0

    iget-object v1, v3, Lcom/android/contacts/model/DataKind;->actionAltHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 173
    .local v1, header:Lcom/android/contacts/model/AccountType$StringInflater;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v1, v7, v5}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .end local v1           #header:Lcom/android/contacts/model/AccountType$StringInflater;
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_1
    return-object v6

    .line 171
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_0
    iget-object v1, v3, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    goto :goto_0

    .line 175
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    const v7, 0x7f0a0121

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
