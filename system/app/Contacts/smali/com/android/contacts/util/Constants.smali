.class public Lcom/android/contacts/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/Constants$Intent;
    }
.end annotation


# static fields
.field public static final ADN_EMAILS_URI:Landroid/net/Uri;

.field public static final ADN_URI:Landroid/net/Uri;

.field public static final RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

.field public static final RAW_CONTACT_ADN_EMAILS_URI:Landroid/net/Uri;

.field public static final RAW_CONTACT_ADN_URI:Landroid/net/Uri;

.field public static final SETTINGS_STATUS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->ADN_URI:Landroid/net/Uri;

    .line 180
    const-string v0, "content://icc/adn/emails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->ADN_EMAILS_URI:Landroid/net/Uri;

    .line 182
    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN_URI:Landroid/net/Uri;

    .line 185
    const-string v0, "content://com.android.contacts/raw_contacts/adn/emails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN_EMAILS_URI:Landroid/net/Uri;

    .line 188
    const-string v0, "content://com.android.contacts/settings_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->SETTINGS_STATUS_URI:Landroid/net/Uri;

    .line 191
    const-string v0, "content://com.android.contacts/raw_contacts/wipe_out"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/Constants;->RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method
