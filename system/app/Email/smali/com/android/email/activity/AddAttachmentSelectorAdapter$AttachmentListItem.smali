.class public Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;
.super Lcom/android/email/activity/IconListAdapter$IconListItem;
.source "AddAttachmentSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AddAttachmentSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachmentListItem"
.end annotation


# instance fields
.field private mCommand:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "title"
    .parameter "resource"
    .parameter "command"

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;I)V

    .line 200
    iput p3, p0, Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;->mCommand:I

    .line 202
    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;->mCommand:I

    return v0
.end method
