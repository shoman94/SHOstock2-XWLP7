.class public Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataBrowseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBrowseListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;",
        ">;"
    }
.end annotation


# instance fields
.field mAccountType:Ljava/lang/String;

.field final mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "textViewId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p5, dataSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    .line 145
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 147
    #getter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;
    invoke-static {p1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->access$100(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    .line 149
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 150
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "dataInfo"

    .prologue
    .line 153
    const-string v3, ""

    .line 154
    .local v3, kindString:Ljava/lang/String;
    const-string v9, ""

    .line 156
    .local v9, typeString:Ljava/lang/String;
    iget-object v5, p3, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    .line 157
    .local v5, mimeType:Ljava/lang/String;
    iget v0, p3, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->dataType:I

    .line 158
    .local v0, dataType:I
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11, v5}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    .line 160
    .local v2, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v2, :cond_3

    .line 161
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, v2, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    iget-object v10, v2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 164
    iget-object v10, v2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/AccountType$EditType;

    .line 165
    .local v8, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v10, v8, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v10, v0, :cond_0

    .line 166
    iget-object v10, v8, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v10, :cond_4

    .line 169
    iget v10, v8, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 181
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v8           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_1
    :goto_0
    const v10, 0x1020014

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 183
    .local v6, text1:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v4, kindTypeString:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    if-eqz v9, :cond_2

    .line 186
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .end local v4           #kindTypeString:Ljava/lang/StringBuilder;
    .end local v6           #text1:Landroid/widget/TextView;
    :cond_3
    const v10, 0x1020015

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 192
    .local v7, text2:Landroid/widget/TextView;
    iget-object v10, p3, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->data:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    return-void

    .line 172
    .end local v7           #text2:Landroid/widget/TextView;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v8       #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_4
    iget-object v9, p3, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->typeString:Ljava/lang/String;

    .line 174
    goto :goto_0

    .line 178
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v8           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_5
    const-string v9, ""

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 198
    if-nez p2, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;)V

    .line 206
    return-object v0

    .line 201
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, view:Landroid/view/View;
    return-object v0
.end method
