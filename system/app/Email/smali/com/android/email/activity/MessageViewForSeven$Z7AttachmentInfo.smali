.class Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
.super Ljava/lang/Object;
.source "MessageViewForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Z7AttachmentInfo"
.end annotation


# instance fields
.field private mContentId:Ljava/lang/String;

.field private mContentUri:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mId:J

.field private mMimeType:Ljava/lang/String;

.field private mPosition:I

.field private mSize:J

.field private status:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1248
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1249
    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1215
    iget v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1215
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mSize:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentUri:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1334
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mId:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1311
    iget v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1342
    iget v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->status:I

    return v0
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .parameter "contentId"

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentId:Ljava/lang/String;

    .line 1327
    return-void
.end method

.method public setContentUri(Ljava/lang/String;)V
    .locals 0
    .parameter "contentUri"

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentUri:Ljava/lang/String;

    .line 1281
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mFileName:Ljava/lang/String;

    .line 1301
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1338
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mId:J

    .line 1339
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mMimeType:Ljava/lang/String;

    .line 1293
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "mPosition"

    .prologue
    .line 1318
    iput p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I

    .line 1319
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1288
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mSize:J

    .line 1289
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 1330
    iput p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->status:I

    .line 1331
    return-void
.end method

.method public writeToBundle(Landroid/os/Bundle;I)V
    .locals 3
    .parameter "out"
    .parameter "nIdx"

    .prologue
    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mSize:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mMimeType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mFileName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mPosition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mContentId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mContentUri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->status:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1273
    return-void
.end method
