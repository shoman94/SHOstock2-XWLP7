.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
.super Ljava/lang/Object;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public collapseCount:I

.field public contactId:J

.field public context:Landroid/content/Context;

.field public data:Ljava/lang/String;

.field public dateType:Ljava/lang/String;

.field public footerLine:Ljava/lang/CharSequence;

.field public id:J

.field public ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public isFirst:Z

.field public isPrimary:Z

.field public label:Ljava/lang/String;

.field public maxLabelLines:I

.field public maxLines:I

.field public mimetype:Ljava/lang/String;

.field public resPackageName:Ljava/lang/String;

.field public type:I

.field public uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->context:Landroid/content/Context;

    .line 1129
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->resPackageName:Ljava/lang/String;

    .line 1131
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isPrimary:Z

    .line 1133
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->ids:Ljava/util/ArrayList;

    .line 1137
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->collapseCount:I

    .line 1139
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isFirst:Z

    .line 1143
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->footerLine:Ljava/lang/CharSequence;

    .line 1145
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    .line 1153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    .line 1157
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    .line 1162
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->dateType:Ljava/lang/String;

    .line 1165
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1126
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;-><init>()V

    return-void
.end method

.method public static fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JJLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    .locals 4
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1172
    new-instance v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;-><init>()V

    .line 1173
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    iput-object p0, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->context:Landroid/content/Context;

    .line 1174
    iput-wide p3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->contactId:J

    .line 1175
    iput-wide p5, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    .line 1176
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1177
    iput-object p1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1178
    const/4 v1, 0x0

    invoke-static {p2, p7, v1, p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->buildActionString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1179
    invoke-static {p2, p7, p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1181
    iget-object v1, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p7, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1182
    iget-object v1, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p7, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    .line 1184
    :cond_0
    return-object v0
.end method


# virtual methods
.method public applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    .locals 1
    .parameter "status"
    .parameter "fillData"

    .prologue
    .line 1265
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1267
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->footerLine:Ljava/lang/CharSequence;

    .line 1270
    :cond_0
    return-object p0
.end method

.method public collapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v1, 0x1

    .line 1275
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1276
    const/4 v1, 0x0

    .line 1302
    :goto_0
    return v1

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    invoke-static {v0, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    iget v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    invoke-static {v2, v3}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v2

    if-le v0, v2, :cond_1

    .line 1282
    iget v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    .line 1283
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1287
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    iget v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    .line 1288
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    iget v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    .line 1294
    iget-boolean v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isPrimary:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isPrimary:Z

    .line 1300
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->ids:Ljava/util/ArrayList;

    iget-wide v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->collapseCount:I

    goto :goto_0

    .line 1294
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isPrimary:Z

    goto :goto_1
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1126
    check-cast p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->collapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v0

    return v0
.end method

.method public shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z
    .locals 6
    .parameter "entry"

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    iget v5, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    const/4 v0, 0x0

    .line 1311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1126
    check-cast p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v0

    return v0
.end method
