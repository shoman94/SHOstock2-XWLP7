.class public Lcom/android/contacts/list/AccountFilterActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "AccountFilterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/AccountFilterActivity$1;,
        Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;,
        Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;,
        Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 224
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/contacts/list/AccountFilterActivity;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/contacts/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/AccountFilterActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private static loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 123
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 124
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 125
    .local v1, accountFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 127
    .local v3, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    move v9, v10

    .line 129
    .local v9, simAccountDisplay:Z
    :goto_0
    invoke-virtual {v3, v11}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 130
    .local v4, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 131
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 132
    .local v2, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v2}, Lcom/android/contacts/model/AccountType;->isExtension()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/contacts/model/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 136
    :cond_1
    if-nez v9, :cond_2

    const-string v11, "vnd.sec.contact.sim"

    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 140
    :cond_2
    const-string v11, "DTM"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "MAX"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "TMZ"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "COS"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "CRO"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 143
    :cond_3
    const-string v11, "com.android.tmo_myphonebook"

    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 147
    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2, p0}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 148
    .local v7, icon:Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v11, v12, v13, v7, v14}, Lcom/android/contacts/list/ContactListFilter;->createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v4           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v9           #simAccountDisplay:Z
    :cond_5
    move v9, v11

    .line 127
    goto/16 :goto_0

    .line 147
    .restart local v0       #account:Lcom/android/contacts/model/AccountWithDataSet;
    .restart local v2       #accountType:Lcom/android/contacts/model/AccountType;
    .restart local v4       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #simAccountDisplay:Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 153
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_7
    const/4 v11, -0x2

    invoke-static {v11}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 157
    .local v5, count:I
    if-lt v5, v10, :cond_9

    .line 159
    if-le v5, v10, :cond_8

    .line 160
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    :cond_8
    const/4 v10, -0x3

    invoke-static {v10}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_9
    return-object v8
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 207
    if-eq p2, v3, :cond_0

    .line 222
    :goto_0
    return-void

    .line 211
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 213
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 216
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/list/AccountFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity;->finish()V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v1, 0x7f040038

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/AccountFilterActivity;->setContentView(I)V

    .line 82
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/AccountFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    .line 83
    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 86
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;-><init>(Lcom/android/contacts/list/AccountFilterActivity;Lcom/android/contacts/list/AccountFilterActivity$1;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 91
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 192
    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/AccountFilterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 198
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 199
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 200
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/AccountFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 268
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 273
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity;->onBackPressed()V

    .line 274
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
