.class public final Lcom/seven/Z7/provider/Im$Contacts;
.super Ljava/lang/Object;
.source "Im.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/seven/Z7/provider/Im$ChatsColumns;
.implements Lcom/seven/Z7/provider/Im$ContactsColumns;
.implements Lcom/seven/Z7/provider/Im$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/provider/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contacts"
.end annotation


# static fields
.field public static final BULK_CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_BLOCKED_CONTACTS:Landroid/net/Uri;

.field public static final CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

.field public static final CONTENT_URI_CHAT_CONTACTS_BY:Landroid/net/Uri;

.field public static final CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

.field public static final CONTENT_URI_CONTACTS_BY:Landroid/net/Uri;

.field public static final CONTENT_URI_OFFLINE_CONTACTS_BY:Landroid/net/Uri;

.field public static final CONTENT_URI_ONLINE_CONTACTS_BY:Landroid/net/Uri;

.field public static final CONTENT_URI_ONLINE_COUNT:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_PRESENCE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const-string v0, "content://com.seven.provider.im/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 170
    const-string v0, "content://com.seven.provider.im/contactsWithPresence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Contacts;->CONTENT_URI_WITH_PRESENCE:Landroid/net/Uri;

    .line 177
    const-string v0, "content://com.seven.provider.im/contactsBarebone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    .line 183
    const-string v0, "content://com.seven.provider.im/contacts/chatting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    .line 189
    const-string v0, "content://com.seven.provider.im/contacts/blocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Contacts;->CONTENT_URI_BLOCKED_CONTACTS:Landroid/net/Uri;

    .line 195
    const-string v0, "content://com.seven.provider.im/contacts/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Contacts;->CONTENT_URI_CONTACTS_BY:Landroid/net/Uri;

    .line 202
    const-string v0, "content://com.seven.provider.im/contacts/chatting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Contacts;->CONTENT_URI_CHAT_CONTACTS_BY:Landroid/net/Uri;

    .line 208
    const-string v0, "content://com.seven.provider.im/contacts/online"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Contacts;->CONTENT_URI_ONLINE_CONTACTS_BY:Landroid/net/Uri;

    .line 214
    const-string v0, "content://com.seven.provider.im/contacts/offline"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Contacts;->CONTENT_URI_OFFLINE_CONTACTS_BY:Landroid/net/Uri;

    .line 220
    const-string v0, "content://com.seven.provider.im/bulk_contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Contacts;->BULK_CONTENT_URI:Landroid/net/Uri;

    .line 227
    const-string v0, "content://com.seven.provider.im/contacts/onlineCount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Im$Contacts;->CONTENT_URI_ONLINE_COUNT:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method
