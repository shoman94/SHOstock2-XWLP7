.class public Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.super Landroid/app/ListActivity;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
    }
.end annotation


# instance fields
.field private isUsingTwoPanel:Z

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedEmailIndex:I

.field private mCheckedNameIndex:I

.field private mCheckedNumberIndex:I

.field private mCheckedPhotoIndex:I

.field private final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEmailChanged:Z

.field private mIsNameChanged:Z

.field private mIsNumberChanged:Z

.field private mIsPhotoChanged:Z

.field private mLayoutMain:Landroid/widget/LinearLayout;

.field protected mLookupUri:Landroid/net/Uri;

.field private mNameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 77
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 84
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    .line 85
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    .line 86
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    .line 87
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    .line 89
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    .line 90
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 386
    new-instance v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$4;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 871
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->performSaveAction()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindData(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    return p1
.end method

.method private bindData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 23
    .parameter "data"

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->initData()V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v14

    .line 215
    .local v14, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity;

    .line 216
    .local v16, entity:Landroid/content/Entity;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v17

    .line 217
    .local v17, entryValues:Landroid/content/ContentValues;
    const-string v2, "data_set"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 218
    .local v15, dataSet:Ljava/lang/String;
    const-string v2, "account_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 219
    .local v9, accountType:Ljava/lang/String;
    const-string v2, "account_name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, accountName:Ljava/lang/String;
    invoke-virtual {v14, v9, v15}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v22

    .line 222
    .local v22, type:Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 224
    .local v11, accountLabel:Ljava/lang/String;
    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    move-object v10, v11

    .line 227
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Entity$NamedContentValues;

    .line 228
    .local v21, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 229
    .local v7, subEntryValues:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, mimeType:Ljava/lang/String;
    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 232
    .local v5, dataId:J
    if-eqz v3, :cond_3

    .line 234
    invoke-virtual {v14, v9, v15, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 236
    .local v4, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v4, :cond_3

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    move-result-object v13

    .line 242
    .local v13, entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v8, p0

    move-object v12, v7

    .line 243
    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindPhotoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    .line 244
    :cond_4
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    .line 246
    :cond_5
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 248
    .local v20, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindPhoneNumberData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    .line 249
    .end local v20           #icon:Landroid/graphics/drawable/Drawable;
    :cond_6
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 251
    .restart local v20       #icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindEmailData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 255
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    .end local v5           #dataId:J
    .end local v7           #subEntryValues:Landroid/content/ContentValues;
    .end local v9           #accountType:Ljava/lang/String;
    .end local v10           #accountName:Ljava/lang/String;
    .end local v11           #accountLabel:Ljava/lang/String;
    .end local v13           #entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    .end local v15           #dataSet:Ljava/lang/String;
    .end local v16           #entity:Landroid/content/Entity;
    .end local v17           #entryValues:Landroid/content/ContentValues;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #icon:Landroid/graphics/drawable/Drawable;
    .end local v21           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v22           #type:Lcom/android/contacts/model/AccountType;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setupFlattenedList()V

    .line 262
    new-instance v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Landroid/app/ListActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private bindEmailData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 5
    .parameter "icon"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 520
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 523
    :cond_0
    const-string v3, "data2"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, typeString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 525
    .local v0, dataType:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 526
    const/4 v0, 0x2

    .line 530
    :goto_0
    const/4 v2, 0x0

    .line 531
    .local v2, types:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isCustomType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 532
    const-string v3, "data3"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    :goto_1
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 538
    iput-object p1, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 539
    iput-object v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 540
    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 541
    const/4 v3, 0x3

    iput v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 543
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    return-void

    .line 528
    .end local v2           #types:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 534
    .restart local v2       #types:Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 5
    .parameter "accountName"
    .parameter "entryValues"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    const/4 v4, 0x1

    .line 461
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    iput-boolean v4, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 464
    :cond_0
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 465
    .local v1, rawContactId:J
    const-string v3, "data1"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 467
    :cond_1
    const v3, 0x104000e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    :cond_2
    iput-wide v1, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 471
    iput-object v0, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 472
    iput-object p1, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 473
    iput-boolean v4, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    .line 474
    iput v4, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 475
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method

.method private bindPhoneNumberData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 10
    .parameter "icon"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 479
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 480
    const/4 v8, 0x1

    iput-boolean v8, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 483
    :cond_0
    const-string v8, "persist.sys.country"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, language:Ljava/lang/String;
    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 485
    .local v5, salesCode:Ljava/lang/String;
    const/4 v1, 0x1

    .line 486
    .local v1, isNeedChangeFormat:Z
    const-string v8, "TNZ"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "VNZ"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "VNX"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "NZC"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "PH"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "NO"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "SE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 488
    :cond_1
    const/4 v1, 0x0

    .line 490
    :cond_2
    const-string v8, "data1"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, number:Ljava/lang/String;
    const-string v8, "normalized_number"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, phoneNumberE164:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 493
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v4, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 496
    :cond_3
    const-string v8, "data2"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 497
    .local v6, typeString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 498
    .local v0, dataType:I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 499
    const/4 v0, 0x2

    .line 503
    :goto_0
    const/4 v7, 0x0

    .line 504
    .local v7, types:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isCustomType(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 505
    const-string v8, "data3"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 510
    :goto_1
    const-string v8, "_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 511
    iput-object p1, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 512
    iput-object v7, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 513
    const-string v8, "data1"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 514
    const/4 v8, 0x2

    iput v8, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 516
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    return-void

    .line 501
    .end local v7           #types:Ljava/lang/String;
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 507
    .restart local v7       #types:Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private bindPhotoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 6
    .parameter "accountType"
    .parameter "accountName"
    .parameter "accountLabel"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 434
    invoke-direct {p0, p4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    iput-boolean v5, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 437
    :cond_0
    const/4 v0, 0x0

    .line 438
    .local v0, photo:Landroid/graphics/Bitmap;
    const-string v2, "data15"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 439
    .local v1, photoBiteArray:[B
    if-nez v1, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02018b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 445
    :goto_0
    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0242

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 450
    :goto_1
    const-string v2, "_id"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 451
    iput-object v0, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mImage:Landroid/graphics/Bitmap;

    .line 452
    iput-object p2, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 453
    iput-object p1, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 454
    iput-boolean v5, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    .line 455
    iput v4, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 457
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    return-void

    .line 443
    :cond_1
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_2
    move-object p1, p3

    goto :goto_1
.end method

.method private static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "kind"
    .parameter "values"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 886
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-object v1

    .line 889
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 890
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 281
    .local v0, count:I
    if-lez v0, :cond_0

    .line 282
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    iget-object v2, v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 283
    .local v2, kind:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;

    invoke-direct {v4, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v2           #kind:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 289
    if-eqz v1, :cond_1

    .line 290
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 297
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 421
    :cond_0
    return-void
.end method

.method private isCustomType(I)Z
    .locals 1
    .parameter "dataType"

    .prologue
    .line 424
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultData(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "subEntryValues"

    .prologue
    const/4 v0, 0x1

    .line 427
    const-string v1, "is_super_primary"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultName(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "entryValues"

    .prologue
    const/4 v0, 0x1

    .line 430
    const-string v1, "name_verified"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performSaveAction()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 357
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    if-eqz v2, :cond_0

    .line 358
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 359
    .local v1, trueValues:Landroid/content/ContentValues;
    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 363
    .end local v1           #trueValues:Landroid/content/ContentValues;
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    if-eqz v2, :cond_1

    .line 364
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .restart local v1       #trueValues:Landroid/content/ContentValues;
    const-string v2, "name_verified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 370
    .end local v1           #trueValues:Landroid/content/ContentValues;
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    if-eqz v2, :cond_2

    .line 371
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .restart local v1       #trueValues:Landroid/content/ContentValues;
    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 377
    .end local v1           #trueValues:Landroid/content/ContentValues;
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    if-eqz v2, :cond_3

    .line 378
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 379
    .restart local v1       #trueValues:Landroid/content/ContentValues;
    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 383
    .end local v1           #trueValues:Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->finish()V

    .line 384
    return-void
.end method

.method private prepareData()V
    .locals 4

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    .line 302
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 304
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 305
    return-void
.end method

.method private setLayout()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 183
    .local v1, rot:I
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_0

    .line 184
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 187
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 202
    .end local v0           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 194
    .restart local v0       #params:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method private setupFlattenedList()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 275
    return-void
.end method

.method private setupTitle()V
    .locals 10

    .prologue
    const/16 v9, 0x1e

    const/4 v8, -0x2

    .line 142
    const v6, 0x7f0a0255

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, displayName:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 144
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 146
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 147
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040018

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, customActionBarView:Landroid/view/View;
    const v6, 0x7f0d009e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 149
    .local v5, saveMenuItem:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v6, 0x7f0d009f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 158
    .local v4, revertMenuItem:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 171
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 177
    .end local v1           #customActionBarView:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #revertMenuItem:Landroid/view/View;
    .end local v5           #saveMenuItem:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 207
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    .line 208
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isUsingTwoPanel:Z

    .line 115
    const v0, 0x7f0400bc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setContentView(I)V

    .line 116
    const v0, 0x7f0d00cb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->prepareData()V

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setupTitle()V

    .line 121
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 895
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-gez p3, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    .line 897
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 133
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->finish()V

    .line 134
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    .line 127
    return-void
.end method
