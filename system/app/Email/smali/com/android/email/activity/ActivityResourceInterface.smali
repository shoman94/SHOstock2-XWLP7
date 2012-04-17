.class public Lcom/android/email/activity/ActivityResourceInterface;
.super Ljava/lang/Object;
.source "ActivityResourceInterface.java"


# static fields
.field public static FEATURE_DISABLE_3G:Z

.field private static mCtx:Landroid/content/Context;

.field private static sMessageDecodeErrorString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/ActivityResourceInterface;->FEATURE_DISABLE_3G:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExchangeSettingActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchange;

    return-object v0
.end method

.method public static getFolderProperties_email_left_icon_folder_favorite(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderProperties_email_left_icon_inbox(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderProperties_getDisplayName(IJ)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "mailboxId"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 172
    .local v0, resId:I
    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 173
    const v0, 0x7f080099

    .line 181
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 182
    sget-object v1, Lcom/android/email/activity/ActivityResourceInterface;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    :goto_1
    return-object v1

    .line 174
    :cond_1
    const-wide/16 v1, -0x4

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 175
    const v0, 0x7f080096

    goto :goto_0

    .line 176
    :cond_2
    const-wide/16 v1, -0x5

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    .line 177
    const v0, 0x7f080097

    goto :goto_0

    .line 178
    :cond_3
    const-wide/16 v1, -0x6

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 179
    const v0, 0x7f080098

    goto :goto_0

    .line 185
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getFolderProperties_mailbox_display_icons(Landroid/content/Context;)Landroid/content/res/TypedArray;
    .locals 2
    .parameter "context"

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderProperties_mailbox_display_names(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getId_account_colors()I
    .locals 1

    .prologue
    .line 273
    const v0, 0x7f0a0027

    return v0
.end method

.method public static getId_combined_view_account_colors()I
    .locals 1

    .prologue
    .line 265
    const v0, 0x7f0a0025

    return v0
.end method

.method public static getId_combined_view_account_colors_2()I
    .locals 1

    .prologue
    .line 269
    const v0, 0x7f0a0026

    return v0
.end method

.method public static getId_recipient_dropdown_item()I
    .locals 1

    .prologue
    .line 257
    const v0, 0x7f040092

    return v0
.end method

.method public static getId_recipient_dropdown_item_loading()I
    .locals 1

    .prologue
    .line 261
    const v0, 0x7f040093

    return v0
.end method

.method public static getId_senders()I
    .locals 1

    .prologue
    .line 245
    const v0, 0x7f060010

    return v0
.end method

.method public static getId_senders_product()I
    .locals 1

    .prologue
    .line 241
    const v0, 0x7f060011

    return v0
.end method

.method public static getId_stores()I
    .locals 1

    .prologue
    .line 253
    const v0, 0x7f060012

    return v0
.end method

.method public static getId_stores_product()I
    .locals 1

    .prologue
    .line 249
    const v0, 0x7f060013

    return v0
.end method

.method public static getIncomingSettingActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncoming;

    return-object v0
.end method

.method public static getMailboxServerName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "ctx"
    .parameter "mailboxType"

    .prologue
    .line 44
    const/4 v0, -0x1

    .line 45
    .local v0, resId:I
    sparse-switch p1, :sswitch_data_0

    .line 77
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 47
    :sswitch_0
    const v0, 0x7f08000c

    .line 48
    goto :goto_0

    .line 50
    :sswitch_1
    const v0, 0x7f08000d

    .line 51
    goto :goto_0

    .line 53
    :sswitch_2
    const v0, 0x7f08000e

    .line 54
    goto :goto_0

    .line 56
    :sswitch_3
    const v0, 0x7f08000f

    .line 57
    goto :goto_0

    .line 59
    :sswitch_4
    const v0, 0x7f080010

    .line 60
    goto :goto_0

    .line 62
    :sswitch_5
    const v0, 0x7f080011

    .line 63
    goto :goto_0

    .line 67
    :sswitch_6
    const v0, 0x7f080323

    .line 68
    goto :goto_0

    .line 72
    :sswitch_7
    const v0, 0x7f080151

    goto :goto_0

    .line 77
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x62 -> :sswitch_7
    .end sparse-switch
.end method

.method public static getMessageDecodeErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/email/activity/ActivityResourceInterface;->sMessageDecodeErrorString:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/ActivityResourceInterface;->sMessageDecodeErrorString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getMessagingExceptionErrorStringResourceId(Lcom/android/emailcommon/mail/MessagingException;)I
    .locals 5
    .parameter "e"

    .prologue
    const v1, 0x7f080112

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 189
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Email;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v0, v2

    .line 192
    .local v0, isAirPlaneEnabled:Z
    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/email/EmailUtility;->isNetworkConnected()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_2

    .line 195
    :cond_1
    const v1, 0x7f080556

    .line 229
    :goto_0
    :sswitch_0
    return v1

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 229
    const v1, 0x7f0800b4

    goto :goto_0

    .line 200
    :sswitch_1
    const v1, 0x7f080113

    goto :goto_0

    .line 202
    :sswitch_2
    const v1, 0x7f080110

    goto :goto_0

    .line 204
    :sswitch_3
    const v1, 0x7f080111

    goto :goto_0

    .line 208
    :sswitch_4
    const v1, 0x7f080109

    goto :goto_0

    .line 215
    :sswitch_5
    const v1, 0x7f08010b

    goto :goto_0

    .line 218
    :sswitch_6
    const v1, 0x7f08059e

    goto :goto_0

    .line 220
    :sswitch_7
    const v1, 0x7f08059f

    goto :goto_0

    .line 222
    :sswitch_8
    const v1, 0x7f0805a0

    goto :goto_0

    .line 224
    :sswitch_9
    const v1, 0x7f0805a1

    goto :goto_0

    .line 226
    :sswitch_a
    const v1, 0x7f0805a2

    goto :goto_0

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x7 -> :sswitch_0
        0x4a -> :sswitch_5
        0x50001 -> :sswitch_6
        0x50002 -> :sswitch_7
        0x50003 -> :sswitch_8
        0x50004 -> :sswitch_9
        0x50005 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getOutgoingSettingActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    const-class v0, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    return-object v0
.end method

.method public static getRawMimeTypesId()I
    .locals 1

    .prologue
    .line 233
    const v0, 0x7f070001

    return v0
.end method

.method public static getSetupPopImapSetupIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 348
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionSetupPopImapIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getString_prefs_email_default_path_value(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 93
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 85
    sput-object p0, Lcom/android/email/activity/ActivityResourceInterface;->mCtx:Landroid/content/Context;

    .line 87
    invoke-static {p0}, Lcom/android/email/activity/utils/ProgressTracker;->getInstance(Landroid/content/Context;)Lcom/android/email/activity/utils/ProgressTracker;

    .line 89
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/ActivityResourceInterface;->sMessageDecodeErrorString:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static makeDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "packedTo"
    .parameter "packedCc"
    .parameter "packedBcc"

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, first:Lcom/android/emailcommon/mail/Address;
    const/4 v6, 0x0

    .line 129
    .local v6, nRecipients:I
    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/String;

    aput-object p1, v1, v10

    aput-object p2, v1, v11

    aput-object p3, v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 132
    .local v7, packed:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 133
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    array-length v8, v0

    add-int/2addr v6, v8

    .line 134
    if-nez v2, :cond_0

    array-length v8, v0

    if-lez v8, :cond_0

    .line 135
    aget-object v2, v0, v10

    .line 129
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    .end local v0           #addresses:[Lcom/android/emailcommon/mail/Address;
    .end local v7           #packed:Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_3

    .line 139
    const-string v3, ""

    .line 148
    :cond_2
    :goto_1
    return-object v3

    .line 141
    :cond_3
    const-string v3, ""

    .line 142
    .local v3, friendly:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 143
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v3

    .line 145
    :cond_4
    if-eq v6, v11, :cond_2

    .line 148
    const v8, 0x7f0800bf

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    add-int/lit8 v10, v6, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static openDebugSettingScreen(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 344
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettingsWithDebug(Landroid/content/Context;)V

    .line 345
    return-void
.end method

.method public static updateAllWidgets()V
    .locals 1

    .prologue
    .line 359
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/widget/WidgetManager;->updateAllWidgets()V

    .line 360
    return-void
.end method
