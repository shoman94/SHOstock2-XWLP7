.class Lcom/android/email/provider/EmailProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "name"

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    .line 1703
    const/4 v0, 0x0

    const/16 v1, 0x7d6

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1704
    iput-object p2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 1705
    return-void
.end method

.method private addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "db"
    .parameter "col_name"
    .parameter "col_type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " add column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1755
    .local v1, tmp:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alter table Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1761
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alter table Message_Updates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1767
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alter table Message_Deletes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1771
    :goto_2
    return-void

    .line 1756
    :catch_0
    move-exception v0

    .line 1757
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception adding - Message.TABLE_NAME. tmp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1762
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v0

    .line 1763
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception adding - Message.UPDATED_TABLE_NAME. tmp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1768
    .end local v0           #e:Landroid/database/SQLException;
    :catch_2
    move-exception v0

    .line 1769
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception adding - Message.DELETED_TABLE_NAME. tmp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private onUpdgradeMailboxInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v3, 0x0

    .line 3138
    const-string v8, "_id=? AND ( type =? OR type =? OR type =? OR type =? OR type =? OR type =? OR type =?)"

    .line 3142
    const-string v1, "Account"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "peakSchedule"

    aput-object v0, v2, v12

    const/4 v0, 0x2

    const-string v4, "offPeakSchedule"

    aput-object v4, v2, v0

    const-string v0, "syncInterval"

    aput-object v0, v2, v11

    const-string v0, "syncLookback"

    aput-object v0, v2, v9

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3143
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 3145
    :goto_0
    if-eqz v0, :cond_0

    .line 3146
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3147
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3148
    const-string v4, "peakSyncSchedule"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3149
    const-string v4, "offpeakSyncSchedule"

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3150
    const-string v4, "syncInterval"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3151
    const-string v4, "SyncIntervalReference"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3152
    const-string v4, "syncLookback"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3154
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3155
    const-string v5, "syncInterval"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3156
    const-string v5, "SyncIntervalReference"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3157
    const-string v5, "syncLookback"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3158
    const-string v5, "Mailbox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accountKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3160
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v12

    const/4 v0, 0x2

    const/16 v5, 0x42

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0x41

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    const/16 v0, 0x43

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v0, 0x5

    const/16 v5, 0x45

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x7

    const/16 v5, 0x44

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 3164
    const-string v0, "Mailbox"

    invoke-virtual {p1, v0, v2, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3165
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto/16 :goto_0

    .line 3167
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1709
    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProvider database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1712
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1713
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1714
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1715
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1716
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1717
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1719
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1720
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1721
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1722
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1724
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1728
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createRecipientInformationTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1732
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createDocumentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1736
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHistoryAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1738
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createIRMTemplateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1742
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1746
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1747
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 3173
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/16 v3, 0x7d0

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1782
    :try_start_0
    const-string v0, "select count(*) from sqlite_master where type=\'table\' and name=\'EmailAddressCache\'"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1786
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1789
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1791
    if-nez v5, :cond_0

    .line 1792
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1796
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1805
    :goto_0
    if-ge p2, v7, :cond_2

    .line 1806
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1808
    array-length v1, v0

    :goto_1
    if-ge v4, v1, :cond_1

    aget-object v3, v0, v4

    .line 1809
    iget-object v5, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5, v3, v2, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1808
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1798
    :catch_0
    move-exception v0

    .line 1801
    const-string v5, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db adding recent-address-cache"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1811
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1812
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1813
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1814
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1815
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1818
    :try_start_1
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    #calls: Lcom/android/email/provider/EmailProvider;->resetEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->access$000(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3130
    :goto_2
    return-void

    .line 1819
    :catch_1
    move-exception v0

    .line 1822
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from under v5"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1827
    :cond_2
    if-ne p2, v7, :cond_2a

    .line 1830
    :try_start_2
    const-string v0, "alter table Message add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1832
    const-string v0, "alter table Message_Updates add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1834
    const-string v0, "alter table Message_Deletes add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1841
    :goto_3
    const/4 v0, 0x6

    .line 1843
    :goto_4
    const/4 v5, 0x6

    if-ne v0, v5, :cond_3

    .line 1845
    const-string v0, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1846
    const-string v0, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1847
    const/4 v0, 0x7

    .line 1849
    :cond_3
    const/4 v5, 0x7

    if-ne v0, v5, :cond_4

    .line 1852
    :try_start_3
    const-string v0, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1859
    :goto_5
    const/16 v0, 0x8

    .line 1861
    :cond_4
    const/16 v5, 0x8

    if-ne v0, v5, :cond_5

    .line 1864
    :try_start_4
    const-string v0, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1866
    const-string v0, "alter table Account add column signature text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1873
    :goto_6
    const/16 v0, 0x9

    .line 1875
    :cond_5
    const/16 v5, 0x9

    if-ne v0, v5, :cond_6

    .line 1878
    :try_start_5
    const-string v0, "alter table Message add column meetingInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1880
    const-string v0, "alter table Message_Updates add column meetingInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1882
    const-string v0, "alter table Message_Deletes add column meetingInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1889
    :goto_7
    const/16 v0, 0xa

    .line 1891
    :cond_6
    const/16 v5, 0xa

    if-ne v0, v5, :cond_7

    .line 1894
    :try_start_6
    const-string v0, "alter table Attachment add column content text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1896
    const-string v0, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1903
    :goto_8
    const/16 v0, 0xb

    .line 1905
    :cond_7
    const/16 v5, 0xb

    if-ne v0, v5, :cond_8

    .line 1908
    :try_start_7
    const-string v0, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1915
    :goto_9
    const/16 v0, 0xc

    .line 1917
    :cond_8
    const/16 v5, 0xc

    if-ne v0, v5, :cond_9

    .line 1919
    :try_start_8
    const-string v0, "alter table Mailbox add column messageCount integer not null default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1921
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1927
    :goto_a
    const/16 v0, 0xd

    .line 1930
    :cond_9
    const/16 v5, 0xd

    if-ne v0, v5, :cond_a

    .line 1932
    :try_start_9
    const-string v0, "alter table Message add column snippet text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1940
    :goto_b
    const/16 v0, 0xe

    .line 1942
    :cond_a
    const/16 v5, 0xe

    if-ne v0, v5, :cond_b

    .line 1944
    :try_start_a
    const-string v0, "alter table Message_Deletes add column snippet text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1946
    const-string v0, "alter table Message_Updates add column snippet text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_a

    .line 1953
    :goto_c
    const/16 v0, 0xf

    .line 1955
    :cond_b
    const/16 v5, 0xf

    if-ne v0, v5, :cond_c

    .line 1957
    :try_start_b
    const-string v0, "alter table Attachment add column accountKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1961
    const-string v0, "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_b

    .line 1971
    :goto_d
    const/16 v0, 0x10

    .line 1973
    :cond_c
    const/16 v5, 0x10

    if-ne v0, v5, :cond_d

    .line 1975
    :try_start_c
    const-string v0, "alter table Mailbox add column parentKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_c

    .line 1982
    :goto_e
    const/16 v0, 0x11

    .line 1985
    :cond_d
    const/16 v5, 0x11

    if-ne v0, v5, :cond_e

    .line 1987
    :try_start_d
    const-string v0, "alter table Message add column threadId integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1989
    const-string v0, "alter table Message_Updates add column threadId integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1991
    const-string v0, "alter table Message_Deletes add column threadId integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1994
    const-string v0, "alter table Message add column threadName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1996
    const-string v0, "alter table Message_Updates add column threadName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1998
    const-string v0, "alter table Message_Deletes add column threadName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2002
    const-string v0, "importance"

    const-string v5, "integer default 1"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    const-string v0, "istruncated"

    const-string v5, "integer default 0"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    const-string v0, "flagMoved"

    const-string v5, "integer default 0"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    const-string v0, "dstMailboxKey"

    const-string v5, "integer default -1"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    const-string v0, "flagStatus"

    const-string v5, "integer default 0"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    const-string v0, "alter table Account add column emailsize integer default 3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2011
    const-string v0, "alter table Account add column policyKey integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2013
    const-string v0, "alter table Account add column peakDays integer default 62;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2015
    const-string v0, "alter table Account add column peakStartMinute integer default 480;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2017
    const-string v0, "alter table Account add column peakEndMinute integer default 1020;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2019
    const-string v0, "alter table Account add column peakSchedule integer default -2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2021
    const-string v0, "alter table Account add column offPeakSchedule integer default -2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2024
    const-string v0, "alter table Account add column roamingSchedule integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2026
    const-string v0, "alter table Account add column calendarSyncLookback integer default 4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2030
    const-string v0, "alter table Mailbox add column flagChanged integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2032
    const-string v0, "alter table Mailbox add column dstMailboxId text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2034
    const-string v0, "alter table Mailbox add column newDisplayName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2038
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2039
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    #calls: Lcom/android/email/provider/EmailProvider;->populateFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/email/provider/EmailProvider;->access$100(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2042
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_d

    .line 2047
    :goto_f
    const/16 v0, 0x12

    .line 2054
    :cond_e
    :try_start_e
    const-string v5, "select name from sqlite_master where type=\'table\' and name = \'Account_CB\'"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2058
    if-eqz v2, :cond_f

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    move-result v5

    if-lez v5, :cond_f

    move v4, v1

    .line 2062
    :cond_f
    if-eqz v2, :cond_29

    .line 2063
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v4

    .line 2066
    :goto_10
    const/16 v4, 0x3e8

    if-gt v0, v4, :cond_28

    .line 2068
    if-nez v2, :cond_10

    .line 2069
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2070
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2071
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2072
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    move v2, v1

    .line 2077
    :cond_10
    :try_start_f
    const-string v0, "EmailProvider"

    const-string v4, "onUpgrade insert cb table"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    const-string v0, "delete from account where _id in (select accountKey from account_cb where typeMsg = 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2079
    const-string v0, "insert into account_cb (accountKey, typeMsg) select _id, 0 from account where _id not in (select accountKey from account_cb)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2080
    const-string v0, "insert into mailbox_cb (mailboxKey, typeMsg) select _id, 0 from mailbox where _id not in (select mailboxKey from mailbox_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2081
    const-string v0, "insert into message_cb (messageKey, typeMsg) select _id, 0 from message where _id not in (select messageKey from message_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 2086
    :goto_11
    const/16 v0, 0x3e9

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2088
    :goto_12
    const/16 v4, 0x3e9

    if-ne v2, v4, :cond_11

    .line 2090
    :try_start_10
    const-string v2, "EmailProvider"

    const-string v4, "alter table mailbox_cb"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    const-string v2, "alter table Mailbox_CB add column syncFlag integer;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 2097
    :goto_13
    const/16 v2, 0x3ea

    .line 2099
    :cond_11
    const/16 v4, 0x3ea

    if-ne v2, v4, :cond_12

    .line 2101
    if-eqz v0, :cond_23

    .line 2102
    :try_start_11
    const-string v4, "EmailProvider"

    const-string v5, "oldVersion == 1002"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    const-string v4, " create table account_temp as select * from account_cb "

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2104
    invoke-static {p1, v2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2105
    const-string v2, " insert into Account_CB (_id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit)select _id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit from account_temp "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2109
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/EmailProvider;->resetSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2110
    const-string v2, "drop table account_temp"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12

    .line 2131
    :goto_14
    const/16 v2, 0x3eb

    .line 2133
    :cond_12
    const/16 v4, 0x3eb

    if-ne v2, v4, :cond_27

    .line 2134
    const-string v4, "EmailProvider"

    const-string v5, "oldVersion == 1003"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    if-eqz v0, :cond_24

    .line 2145
    :try_start_12
    const-string v1, " create table account_temp as select * from account_cb "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2146
    invoke-static {p1, v2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2148
    const-string v1, " insert into Account_CB (_id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit)select _id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit from account_temp "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2153
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/EmailProvider;->resetSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2154
    const-string v1, "drop table account_temp"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_69

    move v1, v0

    .line 2176
    :goto_15
    const/16 v0, 0x3ec

    move v2, v1

    move v1, v0

    .line 2179
    :goto_16
    const/16 v0, 0x3ec

    if-ne v1, v0, :cond_13

    .line 2181
    :try_start_13
    const-string v0, "isMimeLoaded"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_13 .. :try_end_13} :catch_15

    .line 2187
    :goto_17
    :try_start_14
    const-string v0, "smimeFlags"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    const-string v0, "encryptionAlgorithm"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const-string v0, "lastVerb"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    const-string v0, "lastVerbTime"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    const-string v0, "umCallerId"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    const-string v0, "umUserNotes"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    const-string v0, "conversationId"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    const-string v0, "conversationIndex"

    const-string v1, "blob"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    const-string v0, "followupflag"

    const-string v1, "blob"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    const-string v0, "messageType"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    const-string v0, "messageDirty"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    const-string v0, "alter table Account add column smimeOwnCertificateAlias text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2202
    const-string v0, "alter table Account add column smimeOptionsFlags integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2205
    const-string v0, "alter table Account add column smimeSignAlgorithm integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2209
    const-string v0, "alter table Account add column smimeEncryptionAlgorithm integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2213
    const-string v0, "alter table Account add column conversationMode integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2216
    const-string v0, "alter table Account add column textPreview integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2219
    const-string v0, "alter table Attachment add column vmAttOrder integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2222
    const-string v0, "alter table Attachment add column vmAttDuration integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2225
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_14
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_14} :catch_16

    .line 2232
    :goto_18
    const/16 v1, 0x3ed

    .line 2235
    :cond_13
    const/16 v0, 0x3ed

    if-ne v1, v0, :cond_14

    .line 2237
    :try_start_15
    const-string v0, "alter table Account add column deviceInfoSent integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_15} :catch_17

    .line 2245
    :goto_19
    :try_start_16
    const-string v0, "alter table Account add column deviceBlockedType integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/SQLException; {:try_start_16 .. :try_end_16} :catch_18

    .line 2252
    :goto_1a
    const/16 v1, 0x3ee

    .line 2254
    :cond_14
    const/16 v0, 0x3ee

    if-ne v1, v0, :cond_15

    .line 2256
    :try_start_17
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createRecipientInformationTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_17
    .catch Landroid/database/SQLException; {:try_start_17 .. :try_end_17} :catch_19

    .line 2262
    :goto_1b
    :try_start_18
    const-string v0, "accountSchema"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    const-string v0, "update Message set accountSchema= (SELECT HostAuth.protocol from HostAuth where HostAuth.accountKey = Message.accountKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2269
    const-string v0, "mailboxType"

    const-string v1, "integer default -1"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    const-string v0, "update Message set mailboxType= (SELECT Mailbox.type from Mailbox where Mailbox._id = Message.mailboxKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/database/SQLException; {:try_start_18 .. :try_end_18} :catch_1a

    .line 2282
    :goto_1c
    :try_start_19
    const-string v0, "alter table Account add column conflict integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2284
    const-string v0, "update Account set conflict= 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/database/SQLException; {:try_start_19 .. :try_end_19} :catch_1b

    .line 2329
    :goto_1d
    const/16 v1, 0x3ef

    .line 2332
    :cond_15
    const/16 v0, 0x3ef

    if-ne v1, v0, :cond_16

    .line 2336
    :try_start_1a
    const-string v0, "alter table Attachment add column isInline integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/database/SQLException; {:try_start_1a .. :try_end_1a} :catch_1c

    .line 2344
    :goto_1e
    const/16 v1, 0x3f0

    .line 2347
    :cond_16
    const/16 v0, 0x3f0

    if-ne v1, v0, :cond_17

    .line 2349
    :try_start_1b
    const-string v0, "alter table Account add column IRMTemplateTimeStamp text ;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_1b} :catch_1d

    .line 2356
    :goto_1f
    :try_start_1c
    const-string v0, "IRMTemplateId"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/database/SQLException; {:try_start_1c .. :try_end_1c} :catch_1e

    .line 2361
    :goto_20
    :try_start_1d
    const-string v0, "IRMContentExpiryDate"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/database/SQLException; {:try_start_1d .. :try_end_1d} :catch_1f

    .line 2366
    :goto_21
    :try_start_1e
    const-string v0, "IRMContentOwner"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/database/SQLException; {:try_start_1e .. :try_end_1e} :catch_20

    .line 2371
    :goto_22
    :try_start_1f
    const-string v0, "IRMLicenseFlag"

    const-string v1, "integer default -1"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/database/SQLException; {:try_start_1f .. :try_end_1f} :catch_21

    .line 2376
    :goto_23
    :try_start_20
    const-string v0, "IRMOwner"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/database/SQLException; {:try_start_20 .. :try_end_20} :catch_22

    .line 2381
    :goto_24
    :try_start_21
    const-string v0, "IRMRemovalFlag"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/database/SQLException; {:try_start_21 .. :try_end_21} :catch_23

    .line 2385
    :goto_25
    const/16 v1, 0x3f1

    .line 2390
    :cond_17
    const/16 v0, 0x3f1

    if-ne v1, v0, :cond_18

    .line 2392
    :try_start_22
    const-string v0, "alter table Account add column cbaCertificateAlias text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/database/SQLException; {:try_start_22 .. :try_end_22} :catch_24

    .line 2399
    :goto_26
    const/16 v1, 0x3f2

    .line 2404
    :cond_18
    const/16 v0, 0x3f2

    if-ne v1, v0, :cond_19

    .line 2406
    :try_start_23
    const-string v0, "alter table Account add column messageFormat integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/database/SQLException; {:try_start_23 .. :try_end_23} :catch_25

    .line 2413
    :goto_27
    const/16 v1, 0x3f3

    .line 2415
    :cond_19
    const/16 v0, 0x3f3

    if-ne v1, v0, :cond_1a

    .line 2417
    :try_start_24
    const-string v0, "alter table Account add column accountType integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/database/SQLException; {:try_start_24 .. :try_end_24} :catch_26

    .line 2424
    :goto_28
    const/16 v1, 0x3f4

    .line 2426
    :cond_1a
    const/16 v0, 0x3f4

    if-ne v1, v0, :cond_1b

    .line 2427
    const-string v0, "IRMTemplateName"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    const-string v0, "IRMTemplateDescription"

    const-string v1, "text"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    const/16 v1, 0x3f5

    .line 2433
    :cond_1b
    if-ge v1, v3, :cond_26

    .line 2436
    :try_start_25
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHistoryAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_25
    .catch Landroid/database/SQLException; {:try_start_25 .. :try_end_25} :catch_27

    .line 2444
    :goto_29
    :try_start_26
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_26
    .catch Landroid/database/SQLException; {:try_start_26 .. :try_end_26} :catch_28

    .line 2452
    :goto_2a
    :try_start_27
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2453
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    #calls: Lcom/android/email/provider/EmailProvider;->populateFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/email/provider/EmailProvider;->access$100(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_27
    .catch Landroid/database/SQLException; {:try_start_27 .. :try_end_27} :catch_29

    .line 2462
    :goto_2b
    :try_start_28
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->updatePasswordModeFromGB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_28
    .catch Landroid/database/SQLException; {:try_start_28 .. :try_end_28} :catch_2a

    .line 2469
    :goto_2c
    :try_start_29
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_29
    .catch Landroid/database/SQLException; {:try_start_29 .. :try_end_29} :catch_2b

    .line 2477
    :goto_2d
    :try_start_2a
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createRecipientInformationTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2a
    .catch Landroid/database/SQLException; {:try_start_2a .. :try_end_2a} :catch_2c

    .line 2486
    :goto_2e
    :try_start_2b
    const-string v0, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2487
    const-string v0, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/database/SQLException; {:try_start_2b .. :try_end_2b} :catch_2d

    .line 2496
    :goto_2f
    :try_start_2c
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->convertAccountFlagsFromGB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2c
    .catch Landroid/database/SQLException; {:try_start_2c .. :try_end_2c} :catch_2e

    .line 2505
    :goto_30
    :try_start_2d
    const-string v0, "create trigger account_delete_policy before delete on Account begin delete from Policies where account_id=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/database/SQLException; {:try_start_2d .. :try_end_2d} :catch_2f

    .line 2518
    :goto_31
    :try_start_2e
    const-string v0, "alter table Account add column signature text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/database/SQLException; {:try_start_2e .. :try_end_2e} :catch_30

    .line 2527
    :goto_32
    :try_start_2f
    const-string v0, "alter table Account add column textPreview integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2f
    .catch Landroid/database/SQLException; {:try_start_2f .. :try_end_2f} :catch_31

    .line 2536
    :goto_33
    :try_start_30
    const-string v0, "alter table Account add column emailsize integer default 3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/database/SQLException; {:try_start_30 .. :try_end_30} :catch_32

    .line 2545
    :goto_34
    :try_start_31
    const-string v0, "alter table Account add column conflict integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2547
    const-string v0, "update Account set conflict= 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/database/SQLException; {:try_start_31 .. :try_end_31} :catch_33

    .line 2556
    :goto_35
    :try_start_32
    const-string v0, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/database/SQLException; {:try_start_32 .. :try_end_32} :catch_34

    .line 2565
    :goto_36
    :try_start_33
    const-string v0, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/database/SQLException; {:try_start_33 .. :try_end_33} :catch_35

    .line 2574
    :goto_37
    :try_start_34
    const-string v0, "alter table Account add column calendarSyncLookback integer default 4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/database/SQLException; {:try_start_34 .. :try_end_34} :catch_36

    .line 2583
    :goto_38
    :try_start_35
    const-string v0, "alter table Account add column peakDays integer default 62;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/database/SQLException; {:try_start_35 .. :try_end_35} :catch_37

    .line 2592
    :goto_39
    :try_start_36
    const-string v0, "alter table Account add column peakStartMinute integer default 480;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/database/SQLException; {:try_start_36 .. :try_end_36} :catch_38

    .line 2601
    :goto_3a
    :try_start_37
    const-string v0, "alter table Account add column peakEndMinute integer default 1020;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/database/SQLException; {:try_start_37 .. :try_end_37} :catch_39

    .line 2610
    :goto_3b
    :try_start_38
    const-string v0, "alter table Account add column peakSchedule integer default -2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/database/SQLException; {:try_start_38 .. :try_end_38} :catch_3a

    .line 2619
    :goto_3c
    :try_start_39
    const-string v0, "alter table Account add column offPeakSchedule integer default -2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/database/SQLException; {:try_start_39 .. :try_end_39} :catch_3b

    .line 2628
    :goto_3d
    :try_start_3a
    const-string v0, "alter table Account add column roamingSchedule integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/database/SQLException; {:try_start_3a .. :try_end_3a} :catch_3c

    .line 2637
    :goto_3e
    :try_start_3b
    const-string v0, "alter table Account add column smimeOwnCertificateAlias text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/database/SQLException; {:try_start_3b .. :try_end_3b} :catch_3d

    .line 2646
    :goto_3f
    :try_start_3c
    const-string v0, "alter table Account add column smimeOptionsFlags integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/database/SQLException; {:try_start_3c .. :try_end_3c} :catch_3e

    .line 2655
    :goto_40
    :try_start_3d
    const-string v0, "alter table Account add column smimeSignAlgorithm integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/database/SQLException; {:try_start_3d .. :try_end_3d} :catch_3f

    .line 2665
    :goto_41
    :try_start_3e
    const-string v0, "alter table Account add column smimeEncryptionAlgorithm integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/database/SQLException; {:try_start_3e .. :try_end_3e} :catch_40

    .line 2675
    :goto_42
    :try_start_3f
    const-string v0, "alter table Account add column conversationMode integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/database/SQLException; {:try_start_3f .. :try_end_3f} :catch_41

    .line 2684
    :goto_43
    :try_start_40
    const-string v0, "alter table Account add column deviceInfoSent integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/database/SQLException; {:try_start_40 .. :try_end_40} :catch_42

    .line 2693
    :goto_44
    :try_start_41
    const-string v0, "alter table Account add column deviceBlockedType integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/database/SQLException; {:try_start_41 .. :try_end_41} :catch_43

    .line 2702
    :goto_45
    :try_start_42
    const-string v0, "alter table Account add column policyKey integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_42
    .catch Landroid/database/SQLException; {:try_start_42 .. :try_end_42} :catch_44

    .line 2711
    :goto_46
    :try_start_43
    const-string v0, "alter table Account add column IRMTemplateTimeStamp text ;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_43
    .catch Landroid/database/SQLException; {:try_start_43 .. :try_end_43} :catch_45

    .line 2720
    :goto_47
    :try_start_44
    const-string v0, "alter table Account add column cbaCertificateAlias text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_44
    .catch Landroid/database/SQLException; {:try_start_44 .. :try_end_44} :catch_46

    .line 2729
    :goto_48
    :try_start_45
    const-string v0, "alter table Account add column easLocalChange integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/database/SQLException; {:try_start_45 .. :try_end_45} :catch_47

    .line 2738
    :goto_49
    :try_start_46
    const-string v0, "alter table Account add column messageFormat integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_46
    .catch Landroid/database/SQLException; {:try_start_46 .. :try_end_46} :catch_48

    .line 2747
    :goto_4a
    :try_start_47
    const-string v0, "alter table Account add column accountType integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/database/SQLException; {:try_start_47 .. :try_end_47} :catch_49

    .line 2756
    :goto_4b
    :try_start_48
    const-string v0, "alter table Mailbox add column messageCount integer not null default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2758
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_48
    .catch Landroid/database/SQLException; {:try_start_48 .. :try_end_48} :catch_4a

    .line 2766
    :goto_4c
    :try_start_49
    const-string v0, "alter table Mailbox add column parentKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_49
    .catch Landroid/database/SQLException; {:try_start_49 .. :try_end_49} :catch_4b

    .line 2775
    :goto_4d
    :try_start_4a
    const-string v0, "alter table Mailbox add column flagChanged integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4a
    .catch Landroid/database/SQLException; {:try_start_4a .. :try_end_4a} :catch_4c

    .line 2784
    :goto_4e
    :try_start_4b
    const-string v0, "alter table Mailbox add column newDisplayName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4b
    .catch Landroid/database/SQLException; {:try_start_4b .. :try_end_4b} :catch_4d

    .line 2793
    :goto_4f
    :try_start_4c
    const-string v0, "alter table Mailbox add column flagNoSelect integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/database/SQLException; {:try_start_4c .. :try_end_4c} :catch_4e

    .line 2802
    :goto_50
    :try_start_4d
    const-string v0, "alter table Mailbox add column lastTouchedTime integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/database/SQLException; {:try_start_4d .. :try_end_4d} :catch_4f

    .line 2811
    :goto_51
    :try_start_4e
    const-string v0, "alter table Mailbox add column dstMailboxId text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/database/SQLException; {:try_start_4e .. :try_end_4e} :catch_50

    .line 2820
    :goto_52
    :try_start_4f
    const-string v0, "EmailProvider"

    const-string v4, "Adding new MessageColumns... "

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    const-string v0, "snippet"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    const-string v0, "EasLocalDeleteFlag"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    const-string v0, "EasLocalReadFlag"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    const-string v0, "importance"

    const-string v4, "integer default 1"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    const-string v0, "meetingInfo"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    const-string v0, "flagMoved"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    const-string v0, "dstMailboxKey"

    const-string v4, "integer default -1"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    const-string v0, "flagStatus"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    const-string v0, "istruncated"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    const-string v0, "isMimeLoaded"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    const-string v0, "smimeFlags"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    const-string v0, "encryptionAlgorithm"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    const-string v0, "lastVerb"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    const-string v0, "lastVerbTime"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    const-string v0, "umCallerId"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
    const-string v0, "umUserNotes"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2847
    const-string v0, "conversationId"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    const-string v0, "conversationIndex"

    const-string v4, "blob"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    const-string v0, "followupflag"

    const-string v4, "blob"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    const-string v0, "messageType"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    const-string v0, "messageDirty"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    const-string v0, "threadId"

    const-string v4, "integer"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    const-string v0, "threadName"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2858
    const-string v0, "IRMTemplateId"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    const-string v0, "IRMContentExpiryDate"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    const-string v0, "IRMContentOwner"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    const-string v0, "IRMLicenseFlag"

    const-string v4, "integer default -1"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    const-string v0, "IRMOwner"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    const-string v0, "IRMRemovalFlag"

    const-string v4, "integer default 0"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    const-string v0, "IRMTemplateDescription"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2865
    const-string v0, "IRMTemplateName"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    const-string v0, "IRMTemplateDescription"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    const-string v0, "flagReply"

    const-string v4, "integer"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2869
    const-string v0, "originalId"

    const-string v4, "integer"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/database/SQLException; {:try_start_4f .. :try_end_4f} :catch_51

    .line 2877
    :goto_53
    :try_start_50
    const-string v0, "accountSchema"

    const-string v4, "text"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    const-string v0, "update Message set accountSchema= (SELECT HostAuth.protocol from HostAuth where HostAuth.accountKey = Message.accountKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_50
    .catch Landroid/database/SQLException; {:try_start_50 .. :try_end_50} :catch_52

    .line 2891
    :goto_54
    :try_start_51
    const-string v0, "mailboxType"

    const-string v4, "integer default -1"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    const-string v0, "update Message set mailboxType= (SELECT Mailbox.type from Mailbox where Mailbox._id = Message.mailboxKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_51
    .catch Landroid/database/SQLException; {:try_start_51 .. :try_end_51} :catch_53

    .line 2905
    :goto_55
    :try_start_52
    const-string v0, "alter table Attachment add column content text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/database/SQLException; {:try_start_52 .. :try_end_52} :catch_54

    .line 2914
    :goto_56
    :try_start_53
    const-string v0, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_53
    .catch Landroid/database/SQLException; {:try_start_53 .. :try_end_53} :catch_55

    .line 2923
    :goto_57
    :try_start_54
    const-string v0, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_54
    .catch Landroid/database/SQLException; {:try_start_54 .. :try_end_54} :catch_56

    .line 2932
    :goto_58
    :try_start_55
    const-string v0, "alter table Attachment add column accountKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2935
    const-string v0, "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/database/SQLException; {:try_start_55 .. :try_end_55} :catch_57

    .line 2947
    :goto_59
    :try_start_56
    const-string v0, "alter table Attachment add column vmAttOrder integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_56
    .catch Landroid/database/SQLException; {:try_start_56 .. :try_end_56} :catch_58

    .line 2956
    :goto_5a
    :try_start_57
    const-string v0, "alter table Attachment add column vmAttDuration integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/database/SQLException; {:try_start_57 .. :try_end_57} :catch_59

    .line 2965
    :goto_5b
    :try_start_58
    const-string v0, "alter table Attachment add column isInline integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_58
    .catch Landroid/database/SQLException; {:try_start_58 .. :try_end_58} :catch_5a

    .line 2975
    :goto_5c
    if-eqz v2, :cond_25

    .line 2977
    :try_start_59
    const-string v0, "EmailProvider"

    const-string v2, "oldVersion < 2000alter table mailbox_cb"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    const-string v0, "alter table Mailbox_CB add column syncFlag integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_5b

    .line 2985
    :goto_5d
    :try_start_5a
    const-string v0, "EmailProvider"

    const-string v2, "oldVersion < 2000"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    const-string v0, " create table account_temp as select * from account_cb "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_5d

    .line 2990
    :goto_5e
    :try_start_5b
    invoke-static {p1, v1, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2991
    const-string v0, " insert into Account_CB (_id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit)select _id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit from account_temp "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2995
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/EmailProvider;->resetSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2996
    const-string v0, "drop table account_temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_5c

    :goto_5f
    move v0, v3

    .line 3021
    :goto_60
    if-ne v0, v3, :cond_1c

    .line 3023
    :try_start_5c
    const-string v0, "alter table Account add column forwardWithFiles integer default 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5c
    .catch Landroid/database/SQLException; {:try_start_5c .. :try_end_5c} :catch_5f

    .line 3032
    :goto_61
    :try_start_5d
    const-string v0, "alter table Account add column autoDownload integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/database/SQLException; {:try_start_5d .. :try_end_5d} :catch_60

    .line 3041
    :goto_62
    :try_start_5e
    const-string v0, "alter table Account add column recentMessages integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5e
    .catch Landroid/database/SQLException; {:try_start_5e .. :try_end_5e} :catch_61

    .line 3050
    :goto_63
    :try_start_5f
    const-string v0, "alter table Account add column showImage integer default 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5f
    .catch Landroid/database/SQLException; {:try_start_5f .. :try_end_5f} :catch_62

    .line 3059
    :goto_64
    :try_start_60
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->enableEmailSyncFromGB(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    :try_end_60
    .catch Landroid/database/SQLException; {:try_start_60 .. :try_end_60} :catch_63

    .line 3063
    :goto_65
    const/16 v0, 0x7d1

    .line 3067
    :cond_1c
    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_1d

    .line 3069
    :try_start_61
    const-string v0, "alter table Account add column autoRetryTimes integer default 3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_61
    .catch Landroid/database/SQLException; {:try_start_61 .. :try_end_61} :catch_64

    .line 3076
    :goto_66
    const/16 v0, 0x7d2

    .line 3081
    :cond_1d
    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_1e

    .line 3083
    :try_start_62
    const-string v0, "retrySendTimes"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Landroid/database/SQLException; {:try_start_62 .. :try_end_62} :catch_65

    .line 3087
    :goto_67
    const/16 v0, 0x7d3

    .line 3091
    :cond_1e
    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_1f

    .line 3093
    :try_start_63
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createDocumentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_63
    .catch Landroid/database/SQLException; {:try_start_63 .. :try_end_63} :catch_66

    .line 3099
    :goto_68
    const/16 v0, 0x7d4

    .line 3103
    :cond_1f
    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_20

    .line 3105
    :try_start_64
    const-string v0, "alter table Mailbox add column offpeakSyncSchedule integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3107
    const-string v0, "alter table Mailbox add column peakSyncSchedule integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_64
    .catch Landroid/database/SQLException; {:try_start_64 .. :try_end_64} :catch_67

    .line 3112
    :goto_69
    const/16 v0, 0x7d5

    .line 3116
    :cond_20
    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_21

    .line 3118
    :try_start_65
    const-string v0, "alter table Mailbox add column SyncIntervalReference integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3121
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->onUpdgradeMailboxInit(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_65
    .catch Landroid/database/SQLException; {:try_start_65 .. :try_end_65} :catch_68

    .line 3125
    :goto_6a
    const/16 v0, 0x7d6

    .line 3129
    :cond_21
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrade complete to new version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1836
    :catch_2
    move-exception v0

    .line 1839
    const-string v5, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v5 to v6"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1854
    :catch_3
    move-exception v0

    .line 1857
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 7 to 8 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1868
    :catch_4
    move-exception v0

    .line 1871
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 8 to 9 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1884
    :catch_5
    move-exception v0

    .line 1887
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 9 to 10 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1898
    :catch_6
    move-exception v0

    .line 1901
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 10 to 11 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1910
    :catch_7
    move-exception v0

    .line 1913
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 11 to 12 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1922
    :catch_8
    move-exception v0

    .line 1925
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 12 to 13 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1934
    :catch_9
    move-exception v0

    .line 1937
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 13 to 14 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1948
    :catch_a
    move-exception v0

    .line 1951
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 14 to 15 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1966
    :catch_b
    move-exception v0

    .line 1969
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 15 to 16 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1977
    :catch_c
    move-exception v0

    .line 1980
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 16 to 17 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2043
    :catch_d
    move-exception v0

    .line 2044
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 17 to 18 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 2060
    :catch_e
    move-exception v5

    .line 2062
    if-eqz v2, :cond_29

    .line 2063
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v4

    goto/16 :goto_10

    .line 2062
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_22

    .line 2063
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_22
    throw v0

    .line 2082
    :catch_f
    move-exception v0

    .line 2083
    const-string v4, "EmailProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 2094
    :catch_10
    move-exception v2

    .line 2095
    const-string v4, "EmailProvider"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 2112
    :cond_23
    :try_start_66
    const-string v2, "EmailProvider"

    const-string v4, "oldVersion == 1002 create table cb"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2114
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2115
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2116
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_12

    .line 2120
    :try_start_67
    const-string v0, "insert into account_cb (accountKey, typeMsg) select _id, 0 from account where _id not in (select accountKey from account_cb)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2121
    const-string v0, "insert into mailbox_cb (mailboxKey, typeMsg) select _id, 0 from mailbox where _id not in (select mailboxKey from mailbox_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2122
    const-string v0, "insert into message_cb (messageKey, typeMsg) select _id, 0 from message where _id not in (select messageKey from message_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_11

    move v0, v1

    .line 2125
    goto/16 :goto_14

    .line 2123
    :catch_11
    move-exception v0

    .line 2124
    :try_start_68
    const-string v2, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1002 e =>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_6a

    move v0, v1

    goto/16 :goto_14

    .line 2127
    :catch_12
    move-exception v2

    .line 2128
    :goto_6b
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1002=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 2156
    :cond_24
    :try_start_69
    const-string v2, "EmailProvider"

    const-string v4, "oldVersion == 1003 create table"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2158
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2159
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2160
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_69

    .line 2164
    :try_start_6a
    const-string v0, "insert into account_cb (accountKey, typeMsg) select _id, 0 from account where _id not in (select accountKey from account_cb)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2165
    const-string v0, "insert into mailbox_cb (mailboxKey, typeMsg) select _id, 0 from mailbox where _id not in (select mailboxKey from mailbox_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2166
    const-string v0, "insert into message_cb (messageKey, typeMsg) select _id, 0 from message where _id not in (select messageKey from message_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_13

    goto/16 :goto_15

    .line 2167
    :catch_13
    move-exception v0

    .line 2168
    :try_start_6b
    const-string v2, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1003 e =>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_14

    goto/16 :goto_15

    .line 2172
    :catch_14
    move-exception v0

    .line 2173
    :goto_6c
    const-string v2, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1003=>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 2182
    :catch_15
    move-exception v0

    .line 2183
    const-string v1, "EmailProvider"

    const-string v4, "Maybe this field is already added at previous DB version. "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 2226
    :catch_16
    move-exception v0

    .line 2229
    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1004 to 1005 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 2239
    :catch_17
    move-exception v0

    .line 2242
    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1005 to 1006 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 2247
    :catch_18
    move-exception v0

    .line 2250
    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1005 to 1006 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 2257
    :catch_19
    move-exception v0

    .line 2258
    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1006 to 1007 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 2275
    :catch_1a
    move-exception v0

    .line 2278
    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1006 to 1007 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 2286
    :catch_1b
    move-exception v0

    .line 2287
    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1007 to 1008 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 2339
    :catch_1c
    move-exception v0

    .line 2342
    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1007 to 1008 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 2352
    :catch_1d
    move-exception v0

    .line 2353
    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 2357
    :catch_1e
    move-exception v0

    .line 2358
    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 2362
    :catch_1f
    move-exception v0

    .line 2363
    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 2367
    :catch_20
    move-exception v0

    .line 2368
    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 2372
    :catch_21
    move-exception v0

    .line 2373
    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 2377
    :catch_22
    move-exception v0

    .line 2378
    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 2382
    :catch_23
    move-exception v0

    .line 2383
    const-string v1, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 2394
    :catch_24
    move-exception v0

    .line 2397
    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1009 to 1010 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 2408
    :catch_25
    move-exception v0

    .line 2411
    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1010 to 1011 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 2419
    :catch_26
    move-exception v0

    .line 2422
    const-string v1, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception upgrading EmailProvider.db from 1011 to 1012 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 2437
    :catch_27
    move-exception v0

    .line 2438
    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - createHistoryAccountTable(db) "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 2445
    :catch_28
    move-exception v0

    .line 2446
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - createQuickResponseTable(db) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 2454
    :catch_29
    move-exception v0

    .line 2455
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - createFollowupFlagsTable(db)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 2463
    :catch_2a
    move-exception v0

    .line 2464
    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version -  updatePasswordModeFromGB(db)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto/16 :goto_2c

    .line 2470
    :catch_2b
    move-exception v0

    .line 2471
    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - createCertificateCacheTable(db)"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 2478
    :catch_2c
    move-exception v0

    .line 2479
    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - createRecipientInformationTable(db)"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    .line 2488
    :catch_2d
    move-exception v0

    .line 2489
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - TRIGGER_MAILBOX_DELETE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 2497
    :catch_2e
    move-exception v0

    .line 2498
    const-string v0, "EmailProvider"

    const-string v4, "Caught exception upgrading EmailProvider.db to 2000 version -  convertAccountFlagsFromGB(db)"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 2510
    :catch_2f
    move-exception v0

    .line 2511
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - deleting policies"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    .line 2520
    :catch_30
    move-exception v0

    .line 2521
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SIGNATURE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 2529
    :catch_31
    move-exception v0

    .line 2530
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.TEXT_PREVIEW_SIZE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 2538
    :catch_32
    move-exception v0

    .line 2539
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.EMAIL_SIZE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 2549
    :catch_33
    move-exception v0

    .line 2550
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Account.CONFLICT_RESOLUTION "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 2558
    :catch_34
    move-exception v0

    .line 2559
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SECURITY_FLAGS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 2567
    :catch_35
    move-exception v0

    .line 2568
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SECURITY_SYNC_KEY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 2576
    :catch_36
    move-exception v0

    .line 2577
    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.CALENDAR_SYNC_LOOKBACK"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .line 2585
    :catch_37
    move-exception v0

    .line 2586
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.PEAK_DAYS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 2594
    :catch_38
    move-exception v0

    .line 2595
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.PEAK_START_MINUTE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 2603
    :catch_39
    move-exception v0

    .line 2604
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.PEAK_END_MINUTE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 2612
    :catch_3a
    move-exception v0

    .line 2613
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.PEAK_SCHEDULE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 2621
    :catch_3b
    move-exception v0

    .line 2622
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.OFF_PEAK_SCHEDULE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 2630
    :catch_3c
    move-exception v0

    .line 2631
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.ROAMING_SCHEDULE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 2639
    :catch_3d
    move-exception v0

    .line 2640
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SMIME_OWN_CERTIFICATE_ALIAS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 2648
    :catch_3e
    move-exception v0

    .line 2649
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SMIME_OPTIONS_FLAGS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    .line 2658
    :catch_3f
    move-exception v0

    .line 2659
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SMIME_OPTIONS_SIGN_ALGORITHM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 2668
    :catch_40
    move-exception v0

    .line 2669
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SMIME_OPTIONS_ENCRYPTION_ALGORITHM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 2677
    :catch_41
    move-exception v0

    .line 2678
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.CONVERSATION_MODE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    .line 2686
    :catch_42
    move-exception v0

    .line 2687
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.DEVICE_INFO_SENT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 2695
    :catch_43
    move-exception v0

    .line 2696
    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.DEVICE_BLOCK_TYPE"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_45

    .line 2704
    :catch_44
    move-exception v0

    .line 2705
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.POLICY_KEY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    .line 2713
    :catch_45
    move-exception v0

    .line 2714
    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.IRM_TEMPLATE_TIME_STAMP "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_47

    .line 2722
    :catch_46
    move-exception v0

    .line 2723
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.CBA_CERTIFICATE_ALIAS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48

    .line 2731
    :catch_47
    move-exception v0

    .line 2732
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.EAS_LOCAL_CHANGE_SETTING "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 2740
    :catch_48
    move-exception v0

    .line 2741
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.MESSAGE_FORMAT  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    .line 2749
    :catch_49
    move-exception v0

    .line 2750
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.ACCOUNT_TYPE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 2759
    :catch_4a
    move-exception v0

    .line 2760
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Mailbox.MESSAGE_COUNT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    .line 2768
    :catch_4b
    move-exception v0

    .line 2769
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Mailbox.PARENT_KEY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 2777
    :catch_4c
    move-exception v0

    .line 2778
    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.FLAG_CHANGED "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4e

    .line 2786
    :catch_4d
    move-exception v0

    .line 2787
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.NEW_DISPLAY_NAME "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    .line 2795
    :catch_4e
    move-exception v0

    .line 2796
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.FLAG_NOSELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 2804
    :catch_4f
    move-exception v0

    .line 2805
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.LAST_TOUCHED_TIME "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    .line 2813
    :catch_50
    move-exception v0

    .line 2814
    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.DST_MAILBOX_ID "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_52

    .line 2870
    :catch_51
    move-exception v0

    .line 2871
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Adding new MessageColumns "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 2884
    :catch_52
    move-exception v0

    .line 2885
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Message.ACCOUNT_SCHEMA "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    .line 2898
    :catch_53
    move-exception v0

    .line 2899
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Message.MAILBOX_TYPE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    .line 2907
    :catch_54
    move-exception v0

    .line 2908
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.CONTENT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 2916
    :catch_55
    move-exception v0

    .line 2917
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.FLAGS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    .line 2925
    :catch_56
    move-exception v0

    .line 2926
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.CONTENT_BYTES "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 2940
    :catch_57
    move-exception v0

    .line 2941
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version - Attachment.ACCOUNT_KEY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 2949
    :catch_58
    move-exception v0

    .line 2950
    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.VOICEMAIL_ATT_ORDER"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    .line 2958
    :catch_59
    move-exception v0

    .line 2959
    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.VOICEMAIL_ATT_DURATION"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    .line 2967
    :catch_5a
    move-exception v0

    .line 2968
    const-string v4, "EmailProvider"

    const-string v5, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.ISINLINE "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    .line 2981
    :catch_5b
    move-exception v0

    .line 2982
    :try_start_6c
    const-string v2, "EmailProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_5c

    goto/16 :goto_5d

    .line 3013
    :catch_5c
    move-exception v0

    .line 3014
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldVersion < 2000=>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f

    .line 2987
    :catch_5d
    move-exception v0

    .line 2988
    :try_start_6d
    const-string v2, "EmailProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 2998
    :cond_25
    const-string v0, "EmailProvider"

    const-string v1, "oldVersion < 2000 create table cb"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3000
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3001
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3002
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_5c

    .line 3006
    :try_start_6e
    const-string v0, "insert into account_cb (accountKey, typeMsg) select _id, 0 from account where _id not in (select accountKey from account_cb)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3007
    const-string v0, "insert into mailbox_cb (mailboxKey, typeMsg) select _id, 0 from mailbox where _id not in (select mailboxKey from mailbox_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3008
    const-string v0, "insert into message_cb (messageKey, typeMsg) select _id, 0 from message where _id not in (select messageKey from message_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_5e

    goto/16 :goto_5f

    .line 3009
    :catch_5e
    move-exception v0

    .line 3010
    :try_start_6f
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldVersion < 2000 e =>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_5c

    goto/16 :goto_5f

    .line 3025
    :catch_5f
    move-exception v0

    .line 3028
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2000 to 2001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61

    .line 3034
    :catch_60
    move-exception v0

    .line 3037
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2000 to 2001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62

    .line 3043
    :catch_61
    move-exception v0

    .line 3046
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2000 to 2001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_63

    .line 3052
    :catch_62
    move-exception v0

    .line 3055
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2000 to 2001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    .line 3060
    :catch_63
    move-exception v0

    .line 3061
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception enabling Sync Email from GB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_65

    .line 3071
    :catch_64
    move-exception v0

    .line 3074
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2001 to 2002 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_66

    .line 3084
    :catch_65
    move-exception v0

    .line 3085
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2002 to 2003 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_67

    .line 3094
    :catch_66
    move-exception v0

    .line 3097
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2003 to 2004 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_68

    .line 3109
    :catch_67
    move-exception v0

    .line 3110
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2004 to 2005 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_69

    .line 3122
    :catch_68
    move-exception v0

    .line 3123
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2004 to 2005 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6a

    .line 2172
    :catch_69
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto/16 :goto_6c

    .line 2127
    :catch_6a
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto/16 :goto_6b

    :cond_26
    move v0, v1

    goto/16 :goto_60

    :cond_27
    move v1, v2

    move v2, v0

    goto/16 :goto_16

    :cond_28
    move v8, v2

    move v2, v0

    move v0, v8

    goto/16 :goto_12

    :cond_29
    move v2, v4

    goto/16 :goto_10

    :cond_2a
    move v0, p2

    goto/16 :goto_4
.end method
