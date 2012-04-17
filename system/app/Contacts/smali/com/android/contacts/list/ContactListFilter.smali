.class public final Lcom/android/contacts/list/ContactListFilter;
.super Ljava/lang/Object;
.source "ContactListFilter.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public dataSet:Ljava/lang/String;

.field public filterType:I

.field public groupId:J

.field public groupReadOnly:Z

.field public groupSourceId:Ljava/lang/String;

.field public groupSystemId:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field private mId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 270
    new-instance v0, Lcom/android/contacts/list/ContactListFilter$1;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactListFilter$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/ContactListFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "filterType"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 94
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "filterType"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "dataSet"
    .parameter "icon"
    .parameter "groupId"
    .parameter "groupSourceId"
    .parameter "groupReadOnly"
    .parameter "title"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 81
    iput-object p2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    .line 85
    iput-wide p6, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    .line 86
    iput-object p8, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    .line 87
    iput-boolean p9, p0, Lcom/android/contacts/list/ContactListFilter;->groupReadOnly:Z

    .line 88
    iput-object p10, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/android/contacts/list/ContactListFilter;
    .locals 11
    .parameter "accountType"
    .parameter "accountName"
    .parameter "dataSet"
    .parameter "icon"
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 115
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v9, v1

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;
    .locals 11
    .parameter "filterType"

    .prologue
    const/4 v2, 0x0

    .line 98
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v8, v2

    move-object v10, v2

    invoke-direct/range {v0 .. v10}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;
    .locals 2
    .parameter "prefs"

    .prologue
    .line 233
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilter;->restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 234
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    if-nez v0, :cond_0

    .line 235
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 238
    :cond_0
    return-object v0
.end method

.method public static restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;
    .locals 13
    .parameter "prefs"

    .prologue
    const/4 v11, -0x1

    const/4 v5, 0x0

    .line 242
    const-string v0, "filter.type"

    invoke-interface {p0, v0, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 243
    .local v1, filterType:I
    if-ne v1, v11, :cond_0

    .line 254
    :goto_0
    return-object v5

    .line 247
    :cond_0
    const-string v0, "filter.accountName"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, accountName:Ljava/lang/String;
    const-string v0, "filter.accountType"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, accountType:Ljava/lang/String;
    const-string v0, "filter.dataSet"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, dataSet:Ljava/lang/String;
    const-string v0, "filter.groupId"

    const-wide/16 v11, -0x1

    invoke-interface {p0, v0, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 251
    .local v6, groupId:J
    const-string v0, "filter.groupSourceId"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, groupSourceId:Ljava/lang/String;
    const-string v0, "filter.groupReadOnly"

    const/4 v11, 0x0

    invoke-interface {p0, v0, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 253
    .local v9, groupReadOnly:Z
    const-string v0, "filter.groupTitle"

    const-string v11, "group"

    invoke-interface {p0, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 254
    .local v10, title:Ljava/lang/String;
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct/range {v0 .. v10}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;ZLjava/lang/String;)V

    move-object v5, v0

    goto :goto_0
.end method

.method public static storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 5
    .parameter "prefs"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.type"

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.accountName"

    if-nez p1, :cond_1

    move-object v0, v1

    :goto_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.accountType"

    if-nez p1, :cond_2

    move-object v0, v1

    :goto_2
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.dataSet"

    if-nez p1, :cond_3

    move-object v0, v1

    :goto_3
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "filter.groupId"

    if-nez p1, :cond_4

    const-wide/16 v2, -0x1

    :goto_4
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.groupSourceId"

    if-nez p1, :cond_5

    move-object v0, v1

    :goto_5
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.groupReadOnly"

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_6
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "filter.groupTitle"

    if-nez p1, :cond_7

    :goto_7
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    return-void

    .line 216
    :cond_0
    iget v0, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-wide v2, p1, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    goto :goto_4

    :cond_5
    iget-object v0, p1, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactListFilter;->groupReadOnly:Z

    goto :goto_6

    :cond_7
    iget-object v1, p1, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    goto :goto_7
.end method


# virtual methods
.method public compareTo(Lcom/android/contacts/list/ContactListFilter;)I
    .locals 5
    .parameter "another"

    .prologue
    .line 153
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, res:I
    if-eqz v0, :cond_0

    move v3, v0

    .line 169
    :goto_0
    return v3

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 159
    if-eqz v0, :cond_1

    move v3, v0

    .line 160
    goto :goto_0

    .line 163
    :cond_1
    iget v3, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    iget v4, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eq v3, v4, :cond_2

    .line 164
    iget v3, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    iget v4, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    sub-int/2addr v3, v4

    goto :goto_0

    .line 167
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    .line 168
    .local v1, title1:Ljava/lang/String;
    :goto_1
    iget-object v3, p1, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v2, p1, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    .line 169
    .local v2, title2:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 167
    .end local v1           #title1:Ljava/lang/String;
    .end local v2           #title2:Ljava/lang/String;
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 168
    .restart local v1       #title1:Ljava/lang/String;
    :cond_4
    const-string v2, ""

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/android/contacts/list/ContactListFilter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListFilter;->compareTo(Lcom/android/contacts/list/ContactListFilter;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    if-ne p0, p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    instance-of v3, p1, Lcom/android/contacts/list/ContactListFilter;

    if-nez v3, :cond_2

    move v1, v2

    .line 197
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 200
    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 201
    .local v0, otherFilter:Lcom/android/contacts/list/ContactListFilter;
    iget v3, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    iget v4, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v1, v2

    .line 205
    goto :goto_0

    .line 208
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 209
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 212
    :cond_5
    iget-wide v3, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    iget-wide v5, v0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x2d

    .line 300
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->mId:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 307
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 310
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    const/16 v3, 0x5f

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 313
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->mId:Ljava/lang/String;

    .line 319
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->mId:Ljava/lang/String;

    return-object v1

    .line 314
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_5
    iget-wide v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 315
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 174
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 175
    .local v0, code:I
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 177
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 180
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 183
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 187
    :cond_2
    :goto_0
    return v0

    .line 184
    :cond_3
    iget-wide v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 185
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    long-to-int v2, v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v0, :pswitch_data_0

    .line 148
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 132
    :pswitch_1
    const-string v0, "all_accounts"

    goto :goto_0

    .line 134
    :pswitch_2
    const-string v0, "custom"

    goto :goto_0

    .line 136
    :pswitch_3
    const-string v0, "starred"

    goto :goto_0

    .line 138
    :pswitch_4
    const-string v0, "with_phones"

    goto :goto_0

    .line 140
    :pswitch_5
    const-string v0, "single"

    goto :goto_0

    .line 142
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    .line 145
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_2

    .line 128
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 261
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 266
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListFilter;->groupReadOnly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
