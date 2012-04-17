.class public final Lcom/sec/android/app/contacts/group/GroupEditDataLoaderFactory;
.super Ljava/lang/Object;
.source "GroupEditDataLoaderFactory.java"


# static fields
.field private static final COLS_FOR_EDIT:[Ljava/lang/String;

.field private static COL_FOR_MEMBER:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "system_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "auto_add"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupEditDataLoaderFactory;->COLS_FOR_EDIT:[Ljava/lang/String;

    .line 57
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupEditDataLoaderFactory;->COL_FOR_MEMBER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAggGroupDataLoader(Landroid/content/Context;Ljava/lang/String;)Landroid/content/CursorLoader;
    .locals 7
    .parameter "context"
    .parameter "title"

    .prologue
    .line 65
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/group/GroupEditDataLoaderFactory;->COLS_FOR_EDIT:[Ljava/lang/String;

    const-string v4, "title =? "

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAggGroupMemberLoader(Landroid/content/Context;Ljava/lang/String;)Landroid/content/CursorLoader;
    .locals 8
    .parameter "context"
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, encodeTitle:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.contacts/groups/title/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 76
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/sec/android/app/contacts/group/GroupEditDataLoaderFactory;->COL_FOR_MEMBER:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createGoogleGroupDataLoader(Landroid/content/Context;J)Landroid/content/CursorLoader;
    .locals 7
    .parameter "context"
    .parameter "groupId"

    .prologue
    const/4 v4, 0x0

    .line 82
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 83
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/sec/android/app/contacts/group/GroupEditDataLoaderFactory;->COLS_FOR_EDIT:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createGoogleGroupMemberLoader(Landroid/content/Context;J)Landroid/content/CursorLoader;
    .locals 7
    .parameter "context"
    .parameter "groupId"

    .prologue
    const/4 v4, 0x0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.contacts/groups/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 90
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/sec/android/app/contacts/group/GroupEditDataLoaderFactory;->COL_FOR_MEMBER:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
