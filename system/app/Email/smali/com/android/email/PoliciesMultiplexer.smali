.class public Lcom/android/email/PoliciesMultiplexer;
.super Ljava/lang/Object;
.source "PoliciesMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/email/PoliciesMultiplexer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/email/PoliciesMultiplexer;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private getAllPolicies(Ljava/lang/Long;)[Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    .locals 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 108
    sget-object v0, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v1, "getAllPolicies"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/email/PoliciesMultiplexer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 112
    if-nez v2, :cond_0

    .line 206
    :goto_0
    return-object v3

    .line 117
    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    const-class v1, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    invoke-static {v2, v1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    check-cast v1, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    .line 121
    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    const-string v5, "Boolean"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "name=?"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "RequireSignedSMIMEAlgorithm"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    :cond_1
    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    const-string v5, "Boolean"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "name=?"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "RequireEncryptionSMIMEAlgorithm"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    :cond_2
    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    const-string v4, "Boolean"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "name=?"

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 140
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 141
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_6

    .line 142
    const-string v1, "account_id=?"

    .line 143
    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v10

    .line 147
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v7, "account_id=?"

    move-object v4, v0

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 158
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 166
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    const-class v0, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    .line 173
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "PasswordMode"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 175
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mAccountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_4
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mAccountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 181
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mAccountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_5
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mAccountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 150
    :cond_6
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    .line 188
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 192
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 193
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/email/PoliciesMultiplexer;->removePasswordPolicies(Ljava/util/ArrayList;)V

    goto :goto_4

    .line 197
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 204
    :cond_9
    new-array v0, v10, [Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    move-object v3, v0

    .line 206
    goto/16 :goto_0
.end method

.method private getConcreteObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "type"
    .parameter "value"

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, res:Ljava/lang/Object;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 93
    const-string v1, "Integer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 99
    .end local v0           #res:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 95
    .restart local v0       #res:Ljava/lang/Object;
    :cond_1
    const-string v1, "Boolean"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, res:Ljava/lang/Boolean;
    goto :goto_0
.end method

.method private removePasswordPolicies(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, aPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v2, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    .line 218
    .local v1, policy:Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "PasswordMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    sget-object v3, Lcom/android/email/SecurityPolicy;->PASSWORD_POLICIES:[Ljava/lang/String;

    iget-object v4, v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v1           #policy:Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 226
    return-void
.end method


# virtual methods
.method public computeAggregatePolicy(Ljava/lang/Long;)Ljava/util/HashMap;
    .locals 15
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v12, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v13, "update"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/email/PoliciesMultiplexer;->getAllPolicies(Ljava/lang/Long;)[Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    move-result-object v7

    .line 46
    .local v7, policies:[Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    if-nez v7, :cond_1

    .line 80
    :cond_0
    return-object v11

    .line 49
    :cond_1
    sget-object v12, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v13, "grouping policies by name"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v3, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;>;>;"
    move-object v0, v7

    .local v0, arr$:[Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v8, v0, v4

    .line 52
    .local v8, policy:Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    iget-object v12, v8, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 53
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;>;"
    if-nez v1, :cond_2

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .restart local v1       #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;>;"
    iget-object v12, v8, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v3, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    .end local v1           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;>;"
    .end local v8           #policy:Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    :cond_3
    sget-object v12, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v13, "grouped policies by name"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v12, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v13, "finding the strongest policies"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v10, strongestPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 64
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 65
    .local v2, groupedPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 67
    const/4 v9, 0x0

    .line 68
    .local v9, size:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 69
    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    .end local v2           #groupedPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;>;"
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #size:I
    :cond_5
    sget-object v12, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v13, "found the strongest policies"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v12, Lcom/android/email/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v13, "applying policies to the device"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    .line 77
    .local v8, policy:Lcom/android/emailcommon/provider/EmailContent$Policies;
    iget-object v12, v8, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iget-object v13, v8, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iget-object v14, v8, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-direct {p0, v13, v14}, Lcom/android/email/PoliciesMultiplexer;->getConcreteObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
