.class public Lcom/android/contacts/model/AccountWithDataSet;
.super Landroid/accounts/Account;
.source "AccountWithDataSet.java"


# static fields
.field private static final ARRAY_STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final RAW_CONTACTS_URI_LIMIT_1:Landroid/net/Uri;

.field private static final STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;


# instance fields
.field public final dataSet:Ljava/lang/String;

.field private final mAccountTypeWithDataSet:Lcom/android/contacts/model/AccountTypeWithDataSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-string v0, "\u0001"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/AccountWithDataSet;->STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    .line 46
    const-string v0, "\u0002"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/AccountWithDataSet;->ARRAY_STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/model/AccountWithDataSet;->ID_PROJECTION:[Ljava/lang/String;

    .line 53
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/AccountWithDataSet;->RAW_CONTACTS_URI_LIMIT_1:Landroid/net/Uri;

    .line 76
    new-instance v0, Lcom/android/contacts/model/AccountWithDataSet$1;

    invoke-direct {v0}, Lcom/android/contacts/model/AccountWithDataSet$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/AccountWithDataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/accounts/Account;-><init>(Landroid/os/Parcel;)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/AccountWithDataSet;->mAccountTypeWithDataSet:Lcom/android/contacts/model/AccountTypeWithDataSet;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "dataSet"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object p3, p0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 60
    invoke-static {p2, p3}, Lcom/android/contacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/AccountWithDataSet;->mAccountTypeWithDataSet:Lcom/android/contacts/model/AccountTypeWithDataSet;

    .line 61
    return-void
.end method

.method private static addStringified(Ljava/lang/StringBuilder;Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "sb"
    .parameter "account"

    .prologue
    .line 135
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v0, "\u0001"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v0, "\u0001"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v0, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    return-object p0
.end method

.method public static stringifyList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 170
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 171
    const-string v3, "\u0002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    invoke-static {v2, v0}, Lcom/android/contacts/model/AccountWithDataSet;->addStringified(Ljava/lang/StringBuilder;Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static unstringify(Ljava/lang/String;)Lcom/android/contacts/model/AccountWithDataSet;
    .locals 6
    .parameter "s"

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    .line 155
    sget-object v1, Lcom/android/contacts/model/AccountWithDataSet;->STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, array:[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v2, :cond_0

    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_0
    new-instance v2, Lcom/android/contacts/model/AccountWithDataSet;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    const/4 v1, 0x1

    aget-object v4, v0, v1

    aget-object v1, v0, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v2, v3, v4, v1}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    aget-object v1, v0, v5

    goto :goto_0
.end method

.method public static unstringifyList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 184
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    :cond_0
    return-object v2

    .line 188
    :cond_1
    sget-object v3, Lcom/android/contacts/model/AccountWithDataSet;->ARRAY_STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, array:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 191
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/android/contacts/model/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 119
    instance-of v0, p1, Lcom/android/contacts/model/AccountWithDataSet;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/model/AccountWithDataSet;

    .end local p1
    iget-object v0, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccountTypeWithDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/model/AccountWithDataSet;->mAccountTypeWithDataSet:Lcom/android/contacts/model/AccountTypeWithDataSet;

    return-object v0
.end method

.method public hasData(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 95
    const-string v6, "account_type = ? AND account_name = ?"

    .line 99
    .local v6, BASE_SELECTION:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v3, "account_type = ? AND account_name = ? AND data_set IS NULL"

    .line 101
    .local v3, selection:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v8

    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    .line 107
    .local v4, args:[Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/model/AccountWithDataSet;->RAW_CONTACTS_URI_LIMIT_1:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/model/AccountWithDataSet;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 109
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    move v0, v8

    .line 113
    :goto_1
    return v0

    .line 103
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_0
    const-string v3, "account_type = ? AND account_name = ? AND data_set = ?"

    .line 104
    .restart local v3       #selection:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v8

    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    aput-object v0, v4, v2

    .restart local v4       #args:[Ljava/lang/String;
    goto :goto_0

    .line 111
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 113
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public stringify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/android/contacts/model/AccountWithDataSet;->addStringified(Ljava/lang/StringBuilder;Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountWithDataSet {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    iget-object v0, p0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method
