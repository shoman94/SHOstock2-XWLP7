.class public final Lcom/android/contacts/GroupMemberLoader;
.super Landroid/content/CursorLoader;
.source "GroupMemberLoader.java"


# instance fields
.field private final PROJECTION_DATA:[Ljava/lang/String;

.field private final mGroupId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "groupId"

    .prologue
    const/4 v4, 0x1

    .line 79
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "contact_id"

    aput-object v3, v1, v2

    const-string v2, "raw_contact_id"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "display_name"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "display_name_alt"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sort_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "starred"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "contact_presence"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "contact_chat_capability"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "photo_id"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "photo_uri"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "photo_thumb_uri"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "lookup"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "phonetic_name"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "has_phone_number"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "contact_status"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/contacts/GroupMemberLoader;->PROJECTION_DATA:[Ljava/lang/String;

    .line 80
    iput-wide p2, p0, Lcom/android/contacts/GroupMemberLoader;->mGroupId:J

    .line 81
    invoke-direct {p0}, Lcom/android/contacts/GroupMemberLoader;->createUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setUri(Landroid/net/Uri;)V

    .line 82
    iget-object v1, p0, Lcom/android/contacts/GroupMemberLoader;->PROJECTION_DATA:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setProjection([Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/android/contacts/GroupMemberLoader;->createSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setSelection(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/android/contacts/GroupMemberLoader;->createSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v0, p1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, prefs:Lcom/android/contacts/preference/ContactsPreferences;
    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 88
    const-string v1, "sort_key"

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setSortOrder(Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v1, "sort_key_alt"

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupMemberLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, selection:Ljava/lang/StringBuilder;
    const-string v1, "mimetype=? AND data1=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-wide v1, p0, Lcom/android/contacts/GroupMemberLoader;->mGroupId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private createUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 95
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 96
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "directory"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 98
    return-object v0
.end method
